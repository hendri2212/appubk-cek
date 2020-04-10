<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Ujian</h3>
        </div>
        <div class="card-body card-block">
            <form action="" @submit="tambahUjian()" >
                <div class="form-group">
                    <label for="">Pilih Kelas</label>
                    <div class="input-group">
                        <select class="form-control" required v-model="ujian.id_kelas">
                            <option v-for="kelas in dataKelas" :value="kelas.id_kelas">{{kelas.nama_kelas}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Pilih Mapel</label>
                    <div class="input-group">
                        <select class="form-control" required v-model="ujian.id_pelajaran">
                            <option v-for="pelajaran in dataPelajaran" :value="pelajaran.id_pelajaran">{{pelajaran.nama}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-actions form-group">
                    <input class="btn btn-secondary btn-sm" type="submit" value="Tambah Ujian">
                </div>
            </form>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
    <h4 class="d-inline mr-3">Refresh untuk melihat token terbaru</h4><img @click="reload()" style="cursor:pointer;" src="../assets/icon/refresh-cw.svg" alt="">
    <table class="mt-3 table table-striped table-hover table-bordered table-sm">
            <thead class="thead-light text-center">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Kelas</th>
                <th scope="col">Mapel</th>
                <th scope="col">Token</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <?php $i=1; ?>
                <?php foreach($ujian AS $data){ ?>
                    <tr>
                        <td class="text-center"><?php echo $i++ ?></td>
                        <td><?php echo $data->nama_kelas ?></td>
                        <td><?php echo $data->nama ?></td>
                        <td>
                            <?php
                                if($data->token!=""){
                                    echo $data->token;
                                }else{
                                    echo "Tidak ada Token";
                                }
                            ?>
                        </td>
                        <td class="text-center">
                        <?php if($data->status==0){ ?>
                            <div class="badge badge-success text-wrap" style="width: 6rem;">
                                Aktif
                            </div>
                        <?php }else{ ?>
                            <div class="badge badge-danger text-wrap" style="width: 6rem;">
                                Tidak Aktif
                            </div>
                        <?php } ?>
                        </td>
                        <td>
                        <?php if($data->status!=0){ ?>
                            <button @click="genToken(<?php echo $data->id_ujian ?>)" class="btn btn-success">Mulai Ujian</button>
                        <?php }else{ ?>
                            <button @click="stopUjian(<?php echo $data->id_ujian ?>)" class="btn btn-danger">Stop Ujian</button>
                        <?php } ?>
                        <button class="btn btn-info">Edit</button>
                        <!-- <button class="btn btn-info" @click="ujianEdit.formEdit=true,ujianEdit.id_kelas='<?php echo $data->id_kelas ?>',ujianEdit.id_pelajaran='<?php echo $data->id_pelajaran ?>'">Edit</button> -->
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>
<transition name="formEdit">
        <div v-if="ujianEdit.formEdit" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c">
        		    <div class="modal-body" style="overflowY:scroll;"> 
                    <button type="button" class="close" aria-label="Close" @click="ujianEdit.formEdit=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="form-group">
                        <label for="">Pilih Kelas</label>
                        <div class="input-group">
                            <select class="form-control" required v-model="ujianEdit.id_kelas">
                                <option v-for="kelas in dataKelas" :value="kelas.id_kelas">{{kelas.nama_kelas}}</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Pilih Mapel</label>
                        <div class="input-group">
                            <select class="form-control" required v-model="ujianEdit.id_pelajaran">
                                <option v-for="pelajaran in dataPelajaran" :value="pelajaran.id_pelajaran">{{pelajaran.nama}}</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions form-group">
                        <input class="btn btn-secondary btn-sm" type="submit" value="Edit Ujian" @click="updateUjian()">
                    </div>
                    </div>
                    <div class="model-footer">
                        
                    </div>
        		</div>
        	</div>
        </div>
    </transition>