<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
            <div class="form">
                <div class="form-group">
                    <div class="input-group">
                        <input required v-model="siswa.nama" type="text" name="Nama" placeholder="Nama" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <select required class="form-control" v-model="siswa.id_kelas">
                            <option v-for="data in dataKelas" :value="data.id_kelas">{{data.nama_kelas}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input required v-model="siswa.nis" type="number" name="nis" placeholder="NIS" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input required v-model="siswa.username" type="text" name="Username" placeholder="Username" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input required v-model="siswa.password" type="text" name="Password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-actions form-group">
                    <input type="submit" class="btn btn-secondary btn-sm" @click="tambahSiswa()">
                </div>
</div>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
        <table class="table table-striped table-hover table-bordered table-sm">
            <thead class="thead-light">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Kelas</th>
                <th scope="col">NIS</th>
                <th scope="col">Username</th>
                <th scope="col">Password</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataSiswa">
                    <td class="text-center">{{key+1}}</td>
                    <td>{{data.nama}}</td>
                    <td>{{data.nama_kelas}}</td>
                    <td>{{data.nis}}</td>
                    <td>{{data.username}}</td>
                    <td>{{data.password}}</td>
                    <td>
                        <button class="btn btn-danger" @click="hapusSiswa(data.id_siswa,key)">Delete</button>
                        <button class="btn btn-info">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>