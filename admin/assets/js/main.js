let appAdmin = new Vue({
	el: "#appAdmin",
	data: {
		//url: "hendri.ddns.net",
		// url:"smkn1kotabaru.id",
		url:"localhost",
		// url: "192.168.1.254",
		// url: "199.169.1.30",
		dataKelas: [],
		kelas: {
			nama: ""
		},
		editKelas: {
			form: false,
			nama: "",
			id_kelas: "",
			key: ""
		},
		dataPelajaran: [],
		soal_edit: "",
		soal: {
			form: false,
			soal_id: "",
			soal_deskripsi: "",
			soal_jwb1: "",
			soal_jwb2: "",
			soal_jwb3: "",
			soal_jwb4: "",
			soal_jwb5: ""
		},
		ujian: {
			id_kelas: "",
			id_pelajaran: ""
		},
		dataGuru: [],
		mataPelajaran: {
			namaMataPelajaran: "",
			id_guru: "",
			kkm: ""
		},
		dataSiswa: [],
		siswa: {
			nama: "",
			id_kelas: "",
			nis: "",
			username: "",
			password: ""
		},
		nilai: {
			kelas: [],
			essay: [],
			form: false,
			formSiswa: false,
			id_pelajaran: "",
			id_ujian: "",
			kkm: "",
			nama_pelajaran: "",
			nama_kelas: ""
		},
		siswaNilai: [],
		siswaEssay: [],
		ujianEdit: {
			formEdit: false,
			id_kelas: "",
			id_pelajaran: ""
		}

	},
	computed: {
		url_soal: function () {
			return "http://" + this.url + "/appubk/admines/welcome/perSoal/";
		},
	},
	created: function () {
		axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20*%20FROM%20kelas")
			.then(response => {
				this.dataKelas = response.data;
			})
		axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20a.id_pelajaran,b.id_guru,a.nama,b.nama%20AS%20nama_guru,a.KKM%20FROM%20pelajaran%20AS%20a%20INNER%20JOIN%20guru%20AS%20b%20ON%20b.id_guru=a.id_guru")
			.then(response => {
				this.dataPelajaran = response.data;
			})
		axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20*%20FROM%20guru")
			.then(response => {
				this.dataGuru = response.data;
			})
		axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20*%20FROM%20siswa%20AS%20a%20INNER%20JOIN%20kelas%20AS%20b%20ON%20b.id_kelas=a.id_kelas")
			.then(response => {
				this.dataSiswa = response.data;
			})
	},
	methods: {
		addClass: function () {
			let data = {
				kelas: this.kelas.nama,
				stat: "tambahKelas"
			}
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20nama_kelas%20FROM%20kelas%20WHERE%20nama_kelas%20LIKE%20%27" + this.kelas.nama.trim() + "%27")
				.then(r => {
					if (r.data.length < 1) {
						if (this.kelas.nama.trim() != "") {
							axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
								.then(r => {
									appAdmin.dataKelas = r.data;
								})
						} else {
							alert("Nama kelas tidak boleh kosong");
						}
					} else {
						alert('Nama kelas sudah ada');
					}
				})
		},
		deleteClass: function (key, id_kelas) {
			let data = {
				id_kelas: id_kelas,
				stat: "deleteKelas"
			}
			axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
				.then(r => {
					appAdmin.dataKelas.splice(key, 1);
				})
		},
		editClass: function () {
			if (this.editKelas.nama.trim() != "") {
				let data = {
					id_kelas: this.editKelas.id_kelas,
					nama_kelas: this.editKelas.nama,
					stat: "editKelas"
				}
				axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20nama_kelas%20FROM%20kelas%20WHERE%20nama_kelas%20LIKE%20%27" + this.kelas.nama.trim() + "%27")
					.then(r => {
						if (r.data.length < 1) {
							axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
								.then(r => {
									appAdmin.dataKelas[appAdmin.editKelas.key].nama_kelas = appAdmin.editKelas.nama;
								})
						} else {
							alert("Nama kelas sudah ada");
						}
					})
			}
		},
		updateJawaban: function (soal_id, soal_jawaban) {
			let data = {
				soal_id: soal_id,
				soal_jawaban: soal_jawaban,
				stat: "updateJawaban"
			}
			axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
				.then(response => {
					console.log(response.data);
				})
		},
		editSoal: function (soal_id, soal_deskripsi, soal_jwb1, soal_jwb2, soal_jwb3, soal_jwb4, soal_jwb5) {
			this.soal.form = true;
			this.soal.soal_id = soal_id;
			this.soal.soal_deskripsi = soal_deskripsi;
			this.soal.soal_jwb1 = soal_jwb1;
			this.soal.soal_jwb2 = soal_jwb2;
			this.soal.soal_jwb3 = soal_jwb3;
			this.soal.soal_jwb4 = soal_jwb4;
			this.soal.soal_jwb5 = soal_jwb5;
		},
		reload: function () {
			window.location.reload();
		},
		genToken: function (id_ujian) {
			let data = {
				id_ujian: id_ujian,
				stat: "genToken"
			}
			axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
				.then(response => {
					window.location.reload();
				})
		},
		stopUjian: function (id_ujian) {
			let data = {
				id_ujian: id_ujian,
				stat: "stopUjian"
			}
			axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
				.then(response => {
					if (response.status = 200) {
						this.reload();
					}
				})
		},
		tambahUjian: function () {
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20id_ujian%20FROM%20ujian%20WHERE%20id_kelas=%27" + this.ujian.id_kelas + "%27%20AND%20id_pelajaran=%27" + this.ujian.id_pelajaran + "%27")
				.then(response => {
					if (response.data.length < 1) {
						let data = {
							id_kelas: this.ujian.id_kelas,
							id_pelajaran: this.ujian.id_pelajaran,
							stat: "tambahUjian"
						}
						axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data);
					} else {
						alert("Ujian Sudah Ada!!");
					}
				})
		},
		updateUjian: function () {
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20id_ujian%20FROM%20ujian%20WHERE%20id_kelas=%27" + this.ujianEdit.id_kelas + "%27%20AND%20id_pelajaran=%27" + this.ujianEdit.id_pelajaran + "%27")
				.then(response => {
					if (response.data.length < 1) {
						let data = {
							id_kelas: this.ujianEdit.id_kelas,
							id_pelajaran: this.ujianEdit.id_pelajaran,
							stat: "updateUjian"
						}
						axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data);
						window.location.reload();
					} else {
						alert("Ujian Sudah Ada!!");
					}
				})
		},
		tambahMapel: function () {
			let that = this.mataPelajaran;
			if (that.namaMataPelajaran.trim() != "" && that.id_guru.trim() != "" && that.kkm.trim() != "") {
				let data = {
					nama_mapel: that.namaMataPelajaran,
					id_guru: that.id_guru,
					kkm: that.kkm,
					stat: "tambahMapel"
				};
				axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data);
			}
		},
		tambahSiswa: function () {
			let that = this.siswa;
			if (that.nama.trim() != "" && that.id_kelas.trim() != "" && that.nis.trim() != "" && that.username.trim() != "" && that.password.trim() != "") {
				let data = {
					nama: that.nama,
					id_kelas: that.id_kelas,
					nis: that.nis,
					username: that.username,
					password: that.password,
					stat: "tambahSiswa"
				};
				axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
					.then(r => {
						window.location.reload();
					})
			}
		},
		hapusSiswa: function (id_siswa, key) {
			let data = {
				id_siswa: id_siswa,
				stat: "hapusSiswa"
			};
			axios.post("http://" + this.url + "/appubk/assets/json/json.php?akses=api", data)
				.then(r => {
					if (r.status == 200) {
						this.dataSiswa.splice(key, 1);
					}
				})
		},
		listKelas: function (id_pelajaran, kkm, nama_pelajaran) {
			this.nilai.id_pelajaran = id_pelajaran;
			this.nilai.nama_pelajaran = nama_pelajaran;
			this.nilai.kkm = kkm;
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20GROUP_CONCAT(id_kelas)%20AS%20id_kelas%20FROM%20ujian%20WHERE%20id_pelajaran=%27" + id_pelajaran + "%27")
				.then(response => {
					if (response.data.length == 1) {
						axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20*%20FROM%20kelas%20WHERE%20id_kelas%20IN%20(" + response.data[0].id_kelas + ")")
							.then(response => {
								this.nilai.kelas = response.data
							})
					} else {
						this.nilai.kelas = [];
					}
				})
			this.nilai.form = true;
		},
		listSiswa: function (id_kelas, nama_kelas) {
			this.nilai.nama_kelas = nama_kelas;

			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20nama,id_siswa,GROUP_CONCAT(essay.soal_id)%20AS%20id_soal%20FROM%20siswa%20LEFT%20JOIN%20essay_jawaban%20ON%20siswa.id_siswa=essay_jawaban.siswa_id%20LEFT%20JOIN%20essay%20ON%20essay.soal_id=essay_jawaban.soal_id%20AND%20essay.soal_pelajaran=" + this.nilai.id_pelajaran + "%20WHERE%20siswa.id_kelas=" + id_kelas + "%20GROUP%20BY%20nama")
				.then(response => {
					var data = response.data.filter(function (el) {
						return el.id_soal != null
					});
					let essay = [];
					for (let i = 0; i < data.length; i++) {
						let soal = data[i].id_soal.split();
						soal.sort();
						axios.get("http://" + this.url + "/appubk/assets/json/json.php?querys=SELECT%20essay.soal_deskripsi,essay_jawaban.jawaban%20FROM%20essay%20JOIN%20essay_jawaban%20ON%20essay_jawaban.soal_id=essay.soal_id%20WHERE%20essay.soal_id%20IN(" + soal.join() + ")%20AND%20essay_jawaban.siswa_id="+data[i].id_siswa)
							.then(response => {
								essay.push({
									nama: data[i].nama,
									isi: response.data
								});
							})
					}
					this.siswaEssay = essay;
				})
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20COUNT(soal_id)AS%20jum_soal%20FROM%20soal%20WHERE%20soal_pelajaran=%27" + this.nilai.id_pelajaran + "%27")
				.then(r_soal => {
					let per_soal = 100 / r_soal.data[0].jum_soal;
					axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20nama,GROUP_CONCAT(CASE%20WHEN(ujian_jawaban.jawaban=soal.soal_jawaban)%20THEN%201%20ELSE%200%20END)%20AS%20nilai%20FROM%20siswa%20LEFT%20JOIN%20ujian_jawaban%20ON%20siswa.id_siswa=ujian_jawaban.siswa_id%20LEFT%20JOIN%20soal%20ON%20soal.soal_id=ujian_jawaban.soal_id%20AND%20soal.soal_pelajaran=" + this.nilai.id_pelajaran + "%20WHERE%20siswa.id_kelas=" + id_kelas + "%20GROUP%20BY%20nama")
						.then(response => {
							let siswa = [];

							function cekBenar(nilai) {
								return nilai == '1';
							}
							for (let i = 0; i < response.data.length; i++) {
								let array = response.data[i].nilai.split(",");
								let benar = array.filter(cekBenar);
								let hasil = Math.round(benar.length * per_soal);
								siswa.push({
									nama: response.data[i].nama,
									nilai: hasil
								})
							}
							this.siswaNilai = siswa;
						})
					this.nilai.formSiswa = true;
					this.nilai.form = false;
				})
			axios.get("http://" + this.url + "/appubk/assets/json/json.php?query=SELECT%20*%20F")
		},
		exportTableToExcel: function (nama_pelajaran, nama_kelas) {
			let filename = nama_pelajaran + '_' + nama_kelas;
			let tableID = this.$refs.table;
			var downloadLink;
			var dataType = 'application/vnd.ms-excel';
			var tableSelect = tableID;
			var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');

			// Specify file name
			filename = filename ? filename + '.xls' : 'excel_data.xls';

			// Create download link element
			downloadLink = document.createElement("a");

			document.body.appendChild(downloadLink);

			if (navigator.msSaveOrOpenBlob) {
				var blob = new Blob(['\ufeff', tableHTML], {
					type: dataType
				});
				navigator.msSaveOrOpenBlob(blob, filename);
			} else {
				// Create a link to the file
				downloadLink.href = 'data:' + dataType + ', ' + tableHTML;

				// Setting the file name
				downloadLink.download = filename;

				//triggering the function
				downloadLink.click();
			}
		}
	}
})
// query random token
// lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0)
