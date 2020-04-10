<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Rekap Nilai</h3>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama Pelajaran</th>
                <th scope="col">Nama Guru</th>
                <th scope="col">KKM</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataPelajaran">
                    <td>{{key+1}}</td>
                    <td>{{data.nama}}</td>
                    <td>{{data.nama_guru}}</td>
                    <td>{{data.KKM}}</td>
                    <td>
                        <button @click="listKelas(data.id_pelajaran,data.KKM,data.nama)">List Kelas</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<transition name="formEdit">
        <div v-if="nilai.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c" style="height:600px;">
        		    <div class="modal-body" style="overflowY:scroll;"> 
                    <button type="button" class="close" aria-label="Close" @click="nilai.form=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Kelas</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(data,key) in nilai.kelas">
                                <td>{{key+1}}</td>
                                <td>{{data.nama_kelas}}</td>
                                <td><button class="btn btn-success" @click="listSiswa(data.id_kelas,data.nama_kelas)">Download Rekap Nilai</button></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    <div class="model-footer">
                        
                    </div>
        		</div>
        	</div>
        </div>
    </transition>
    <transition name="formEdit">
        <div v-if="nilai.formSiswa" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c" style="height:600px;">
        		    <div class="modal-body" style="overflowY:scroll;"> 
                    <button type="button" class="close" aria-label="Close" @click="nilai.formSiswa=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <button @click="exportTableToExcel(nilai.nama_pelajaran,nilai.nama_kelas)">
                        export
                    </button>
                    <div ref="table">

                    <table border="1px">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th style="text-align:left;">Nama</th>
                                <th>Nilai</th>
                                <th>Status Lulus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(dataBaru,keys) in siswaNilai">
                                <td style="text-align:center;">{{keys+1}}</td>
                                <td style="text-align:left;">{{dataBaru.nama}}</td>
                                <td style="text-align:center;">{{dataBaru.nilai}}</td>
                                <td style="text-align:center;" v-if="dataBaru.nilai>=nilai.kkm">Lulus</td>
                                <td style="text-align:center;" v-if="dataBaru.nilai<nilai.kkm">Tidak Lulus</td>
                            </tr>
                        </tbody>
                    </table>
                    <div v-for="data in siswaEssay">
                        {{data.nama}}
                        <table v-for="(data2,key) in data.isi">
                            <thead>
                                <tr><td colspan="4"></td></tr>
                            </thead>
                            <tbody style="border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0; background-color: rgba(0, 0, 0, 0.03); border-bottom: 1px solid rgba(0, 0, 0, 0.125);">
                                <tr>
                                    <td colspan="4" style=" padding: 0.75rem; text-align:left;background-color: rgba(0, 0, 0, 0.03); border-top: 1px solid #dee2e6; font-weight:bold;"> No. {{key+1}} </td>
                                </tr>
                                <tr>
                                    <td colspan="4" v-html="data2.soal_deskripsi" style=" padding: 0.75rem; vertical-align: top; border-top: 1px solid #dee2e6;"></td>
                                </tr>
                                <tr>
                                    <td colspan="4" style=" padding: 0.75rem; text-align:left; border-top: 1px solid #dee2e6; border-bottom: 1px solid #dee2e6;"> <span style="font-weight:bold;">Jawaban:</span><br> {{data2.jawaban}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
                    </div>
                    </div>
                    <div class="model-footer">
                        
                    </div>
        		</div>
        	</div>
        </div>
    </transition>