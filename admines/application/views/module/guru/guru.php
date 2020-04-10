<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
            <form action="#" method="POST">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" name="Nama" placeholder="Nama" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                        <div class="input-group">
                            <input type="number" name="NIP" placeholder="NIP" class="form-control">
                        </div>
                </div>
                <div class="form-actions form-group"><button type="submit" class="btn btn-secondary btn-sm" name="submit">Submit</button></div>
            </form>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
    <table class="table table-striped table-hover table-bordered table-sm">
            <thead class="thead-light">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama</th>
                <th scope="col">NIP</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataGuru">
                    <td>{{key+1}}</td>
                    <td>{{data.nama}}</td>
                    <td>{{data.NIP}}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>