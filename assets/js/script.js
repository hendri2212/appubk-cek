let ujian = new Vue({
	el: '#app',
	data: {
		sidebar: {
			right: '-300px',
			transition: '0.5s',
		},
		selesai: {
			form: false,
			nilai: null,
			benar: null,
			salah: null,
			kosong: null,
			kkm: null
		},
		yakin: {
			form: false,
		},
		token: {
			form: false
		},
		//url: "hendri.ddns.net"
		// url:"smkn1kotabaru.id"
		url:"localhost"
		// url: "192.168.1.254"
		// url: "193.168.1.249"
	},
	computed: {
		nilaiStyle: function () {
			if (this.selesai.nilai >= this.selesai.kkm) {
				let data = {
					color: '#28a745',
					border: '3px solid #28a745'
				}
				return data;
			} else if (this.selesai.nilai < this.selesai.kkm) {
				let data = {
					color: '#dc3545',
					border: '3px solid #dc3545',
				}
				return data;
			}
		}
	},
	methods: {
		jawab: function (jawaban, id_ujian, id_siswa, id_soal) {
			let data = {
				jawaban: jawaban,
				id_ujian: id_ujian,
				id_siswa: id_siswa,
				id_soal: id_soal,
				stat: "jawab"
			}
			axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
		},
		jawab_update: function (jawaban, id, id_soal) {
			let data = {
				jawaban: jawaban,
				id_soal: id_soal,
				id: id,
				stat: "update_jawab",
			}
			axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
		},
		selesaiButton: function (id_ujian, id_siswa, jumlah_soal, kkm, id_pelajaran, id_record) {
			axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20GROUP_CONCAT(soal_id)%20AS%20soal_id%20FROM%20soal%20WHERE%20soal_pelajaran=%27" + id_pelajaran + "%27")
				.then(response => {
					axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20CASE%20WHEN%20(a.soal_jawaban=b.jawaban)%20THEN%201%20ELSE%200%20END%20as%20nilai%20FROM%20soal%20as%20a%20LEFT%20JOIN%20ujian_jawaban%20as%20b%20ON%20a.soal_id=b.soal_id%20WHERE%20b.ujian_id=%27" + id_ujian + "%27%20AND%20b.siswa_id=%27" + id_siswa + "%27AND%20b.soal_id%20IN%20(" + response.data[0].soal_id + ")")
						.then(response => {
							let benar = [];
							let salah = [];
							let per_soal = 100 / jumlah_soal;
							for (let i = 0; i < response.data.length; i++) {
								if (response.data[i].nilai == 1) {
									benar.push(1);
								} else if (response.data[i].nilai == 0) {
									salah.push(0);
								}
							}
							this.yakin.form = false;
							this.selesai.form = true;
							this.selesai.nilai = Math.round(benar.length * per_soal);
							this.selesai.benar = benar.length;
							this.selesai.salah = salah.length;
							this.selesai.kosong = jumlah_soal - response.data.length;
							this.selesai.kkm = kkm;
							let data = {
								id_record: id_record,
								stat: "logout"
							}
							axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
						})
				})
		},
		logout: function () {
			window.location.reload();
		},
		addJawaban: function (id_soal, id_ujian, id_siswa) {
			// let jawaban = this.$refs.addJawaban.value;
			// console.log(jawaban.replace(/'|"/g,''));
			let data = {
				id_soal: id_soal,
				id_ujian: id_ujian,
				id_siswa: id_siswa,
				// jawaban:jawaban.replace(/'|"/g,'%27'),
				jawaban: this.$refs.addJawaban.value,
				stat: "addJawabanEssay"
			}
			axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
		},
		updateJawaban: function (id) {
			let data = {
				jawaban: this.$refs.updateJawaban.value,
				id: id,
				stat: "updateJawabanEssay",
			}
			axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
		},
	}
})
