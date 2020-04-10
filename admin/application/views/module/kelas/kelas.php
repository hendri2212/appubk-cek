<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
                <div class="form-group">
                    <div class="input-group">
                        <input @keyup.enter="addClass()" v-model="kelas.nama" type="text" placeholder="Nama Kelas" class="form-control">
                    </div>
                </div>
                <div class="form-actions form-group">
                    <input @click="addClass()" class="btn btn-secondary btn-sm" type="button" value="Submit">
                </div>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
    <table class="table table-striped table-hover table-bordered table-sm">
            <thead class="thead-light">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama Kelas</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataKelas">
                    <td>{{key+1}}</td>
                    <td>{{data.nama_kelas}}</td>
                    <td>
                        <button @click="deleteClass(key,data.id_kelas)" class="btn btn-danger">Hapus</button>
                        <button class="btn btn-info" @click="editKelas.form=true,editKelas.id_kelas=data.id_kelas,editKelas.key=key">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<transition name="formEdit">
        <div v-if="editKelas.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c">
        		    <div class="modal-body">
                    <button type="button" class="close" aria-label="Close" @click="editKelas.form=false,editKelas.nama='',editKelas.id_kelas='',editKelas.key=''">
                        <span aria-hidden="true">&times;</span>
                    </button>
                        <input class="form-control" type="text" placeholder="Nama Kelas" v-model="editKelas.nama">
                    </div>
                    <div class="model-footer">
                        <button class="btn btn-danger" @click="editKelas.form=false,editKelas.nama='',editKelas.id_kelas='',editKelas.key=''">Batal</button>
                        <button class="btn btn-warning" @click="editClass()">Edit</button>
                    </div>
        		</div>
        	</div>
        </div>
    </transition>