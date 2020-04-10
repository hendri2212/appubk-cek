<div class="container">
<div class="row">
    <?php
        if($url==""){
            $url=0;
        }
        $id_soal = $essay[0]->soal_id;
        $jawaban = $this->db->query("SELECT jawaban,id FROM essay_jawaban WHERE soal_id=$id_soal AND ujian_id=$id_ujian AND siswa_id=$id_siswa")->row();

    ?>
    <div id="slideMenu" class="container sidebar sidebar-right" v-bind:style="sidebar">
    	<div class="contente">
    	    <div class="text-center" style="padding-bottom:20px; font-size:14px; color:#0066CC;">Soal Pilihan Ganda</div>
            <div class="items">
                <?php for($i=0; $i<count($soalSemua); $i++){ ?>
                    <a class="link-pag <?php if($url==$i AND $halaman!="essay"){echo "aktif";}else{if($soalSemua[$i]->jawaban!=null){echo "terjawab";}else{echo "biasa";}} ?>" href="<?php echo base_url('welcome/soal/'.$i); ?>"><?php echo $i+1; ?></a>
                <?php } ?>
            </div>      
            <div class="text-center" style="padding-bottom:20px; font-size:14px; color:#0066CC;">Soal Essay</div>
            <div class="items">
                <?php for($i=0; $i<count($soalEssay); $i++){ ?>
                    <a class="link-pag <?php if($url==$i AND $halaman=="essay"){echo "aktif";}else{if($soalEssay[$i]->jawaban!=null){echo "terjawab";}else{echo "biasa";}} ?>" href="<?php echo base_url('welcome/essay/'.$i); ?>"><?php echo $i+1; ?></a>
                <?php } ?>
            </div>
            
    	</div>
        <div @click="sidebar.right='0'" v-if="sidebar.right=='-300px'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-left"></i>
        </div>
        <div @click="sidebar.right='-300px'" v-if="sidebar.right=='0'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-right"></i>
        </div>
    </div>
	<div class="col-12">
		<div class="card" style="margin-top:70px;">
			<div class="card-header">
                Selamat Ujian <?php  ?>
			</div>
			<div class="card-body">
            <?php $url1=$url+1; ?>
				<?php foreach ($essay as $data) {
                    echo $url1.'.'.$data->soal_deskripsi.'</br>';
                    if($jawaban==null){
                ?>
                    <textarea @input="addJawaban(<?php echo $data->soal_id ?>,<?php echo $id_ujian ?>,<?php echo $id_siswa ?>)" ref="addJawaban" class="form-control" style="height:400px;">
                        
                    </textarea>
                <?php }else{ 
                    // $c = array ('%27');
                    // $jawabanUbah = str_replace($c, '"', $jawaban->jawaban); // Hilangkan karakter yang telah disebutkan di array $d
                    ?>
                    
                    <textarea @input="updateJawaban(<?php echo $jawaban->id ?>)" ref="updateJawaban" class="form-control" style="height:400px;"><?php echo $jawaban->jawaban ?></textarea>
                <?php 
                }  
                } ?>
            </div>
            <div class="card-footer">
                <div class="row">
                    
                    <div class="col-6 col-md-6">
                        <?php
                        if($url==0){ ?>
                            <?php $urlSoal=count($soalSemua)-1; ?>
                            <a href="<?php echo base_url('welcome/soal/'.$urlSoal) ?>" class="w-100 btn btn-info">Prev</a>        
                        <?php
                        }else{ 
                            
                            $url_previous=$url-1;
                            ?>
                            <a href="<?php echo base_url('welcome/essay/'.$url_previous) ?>" class="w-100 btn btn-info">Prev</a>    
                        <?php
                        }
                        ?>
                        
                    </div>
                    <!-- <div class="col-md-4">
                        <a href="" class="w-100 btn btn-success">Selesai</a>
                    </div> -->
                    <div class="col-6 col-md-6">
                    <?php
                        if($url+1<count($soalEssay)){ 
                            $url_next=$url+1;
                        ?>
                            <a href="<?php echo base_url('welcome/essay/'.$url_next) ?>" class="w-100 btn btn-primary">Next</a>    
                        <?php }else if($url+1==count($soalEssay)){ ?>
                            <button class="btn btn-success w-100" @click="yakin.form=true">Selesai</button>
                        <?php
                        } 
                        ?>       
                    </div>
                </div>
    	    </div>
    	</div>
    </div>
</div>
</div>

        <transition name="form">
        <div v-if="yakin.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-y">
        		    <div class="modal-body">
        		        <h2 style="text-align: center;vertical-align: middle;  ">
                            Anda yakin ingin mengakhiri ujian ini !!
						</h2>
        		    </div>
        		    <div class="modal-footer">
                            <button class="btn btn-success w-50" @click="selesaiButton(<?php echo $id_ujian?>,<?php echo $id_siswa?>,<?php echo count($soalSemua)?>,<?php echo $kkm->kkm ?>,<?php echo $id_pelajaran ?>,<?php echo $id_record->id_record ?>)">Akhiri</button>
                            <button class="btn btn-danger w-50" @click="yakin.form=false">Batal</button>
        		    </div>
        		</div>
			</div>
        </div>
        </transition>
        <transition name="form">
		<div v-if="selesai.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-c">
        		    <div class="modal-body">
                            <table class="table">
                                <tr>
                                    <td>Benar</td>
                                    <td style="color:#28a745;">{{selesai.benar}}</td>
                                </tr>
                                <tr>
                                    <td>Salah</td>
                                    <td style="color:#dc3545;">{{selesai.salah}}</td>
                                </tr>
                                <tr>
                                    <td>Tidak Terjawab</td>
                                    <td>{{selesai.kosong}}</td>
                                </tr>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <div :style="nilaiStyle" class="nilai">{{selesai.nilai}}</div>
                                    </td>
                                </tr>
                            </table>
                    </div>
                    <div class="model-footer">
                        <button class="w-100 btn btn-danger" @click="logout()">Logout</button>
                    </div>
        		</div>
			</div>
    	</div>
        </transition>