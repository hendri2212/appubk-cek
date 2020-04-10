<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Create Mapel</h1>
	<div class="btn-toolbar mb-2 mb-md-0">
		<div class="btn-group mr-2">
			<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
			<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
		</div>
		<button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
			<span data-feather="calendar"></span>
			This week
		</button>
	</div>
</div>
<div class="form">
    <div class="form-group">
        <label for="">Nama Mata Pelajaran</label>
        <input v-model="mataPelajaran.namaMataPelajaran" type="text" required placeholder="Nama Mata Pelajaran" class="form-control">
    </div>
    <div class="form-group">
        <label for="">Nama Guru Mata Pelajaran</label>
        <select class="form-control" v-model="mataPelajaran.id_guru">
            <option v-for="data in dataGuru" :value="data.id_guru">{{data.nama}}</option>
        </select>
    </div>
    <div class="form-group">
        <label for="">KKM</label>
        <input type="number" required placeholder="KKM" class="form-control" v-model="mataPelajaran.kkm">
    </div>
    <input type="button" @click="tambahMapel()" class="btn btn-primary btn-sm float-right" value="Submit">
</div>
<div class="table-responsive pt-4">
    <table class="table table-hover table-striped">
        <thead>
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
                    <a :href="url_soal+data.id_pelajaran" class="btn btn-info btn-sm">View soal</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>