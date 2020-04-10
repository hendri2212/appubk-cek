<div class="container" style="margin-top: 70px;">
    <div class="row">
        <div class="col-12 col-md-4">
            <div class="card card-default">
                <div class="card-header">
                    <img src="<?=base_url('./assets/avatar.gif')?>" class="rounded mx-auto d-block" alt="...">
                </div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="font-weight-bold">Nama :</td>
                                <td><?php echo $siswa->nama; ?></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold">Kelas :</td>
                                <td><?php echo $ujian->nama_kelas; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-4">
            <div class="card card-default">
                <div class="card-header">
                    Info Ujian
                </div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>Mata Pelajaran</td>
                            <td><?php echo $ujian->nama; ?></td>
                        </tr>
                        <tr>
                            <td>Guru</td>
                            <td><?php echo $guru->nama; ?></td>
                        </tr>
                        <tr>
                            <td>KKM</td>
                            <td><?php echo $ujian->KKM; ?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="alert alert-info" style="background-color:#00c0ef !important;color:white;padding:30px;">
                <h4>
                    <i class="icon fa fa-info"></i> Perhatian!
                </h4>
                Silahkan klik tombol mulai ujian dibawah ini, jika anda telah siap melaksanakan ujian.
            </div>
            <button class="btn btn-success" @click="token.form=true">Mulai Ujian</button>
        </div>
    </div>
</div>
<transition name="form">
    <div v-if="token.form" class="modalSelesai">
    	<div class="modal-dialog modal-dialog-centered">
            <form class="form modal-content" action="<?php echo base_url('welcome/') ?>" method="post">
    		    <div class="modal-body">
                    <button type="button" class="close" aria-label="Close" @click="token.form=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <label for="">Input token disini</label>
                    <input type="text" class="d-none" readonly name="id_ujian" value="<?php echo $ujian->id_ujian; ?>">
                    <input type="text" placeholder="Input Token" name="token" class="form-control" required>
    		    </div>
    		    <div class="modal-footer">
                    <input type="submit" name="cek_token" class="w-100 btn btn-success" value="Submit">
    		    </div>
            </form>
    	</div>
    </div>
</transition>