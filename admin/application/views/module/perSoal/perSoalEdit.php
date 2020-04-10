<?php echo form_open("welcome/UpdateperSoalEdit/".$perSoalEdit->soal_id.'/'.$perSoalEdit->soal_pelajaran); ?>
    <div class="form-group">
        <label>Isi Soal</label>
        <textarea name="new_soal_deskripsi" class="form-control">
			<?php echo $perSoalEdit->soal_deskripsi ?>
		</textarea>
	</div>
	<label>Jawaban</label><br>
	<small class="text-muted">*Isi jawaban</small>
	<div class="input-group input-group-sm mb-3">
        <div class="input-group-prepend">
			<span class="input-group-text">A</span>
			<div class="input-group-text">
				<input <?php if($perSoalEdit->soal_jawaban==$perSoalEdit->soal_jwb1){echo "checked";} ?> value="soal_jwb1" type="radio" name="new_soal_jawaban">
			</div>
		</div>
	  	<!-- <input name="new_soal_jwb1" value="<?php //echo $perSoalEdit->soal_jwb1 ?>" required type="text" class="form-control" placeholder="Jawaban A"> -->
		<textarea name="new_soal_jwb1" class="form-control"><?php echo $perSoalEdit->soal_jwb1 ?></textarea>
	</div>
	<div class="input-group mb-3">
        <div class="input-group-prepend">
		  	<span class="input-group-text">B</span>
			<div class="input-group-text">
		  		<input <?php if($perSoalEdit->soal_jawaban==$perSoalEdit->soal_jwb2){echo "checked";} ?> value="soal_jwb2" type="radio" name="new_soal_jawaban">
			</div>
		</div>
	  	<!-- <input name="new_soal_jwb2" value="<?php //echo $perSoalEdit->soal_jwb2 ?>" required type="text" class="form-control" placeholder="Jawaban B"> -->
		<textarea name="new_soal_jwb2" class="form-control"><?php echo $perSoalEdit->soal_jwb2 ?></textarea>
	</div>
	<div class="input-group mb-3">
        <div class="input-group-prepend">
		  	<span class="input-group-text">C</span>
			<div class="input-group-text">
		  		<input <?php if($perSoalEdit->soal_jawaban==$perSoalEdit->soal_jwb3){echo "checked";} ?> value="soal_jwb3" type="radio" name="new_soal_jawaban">
			</div>
		</div>
	  	<!-- <input name="new_soal_jwb3" value="<?php //echo $perSoalEdit->soal_jwb3 ?>" required type="text" class="form-control" placeholder="Jawaban C"> -->
		<textarea name="new_soal_jwb3" class="form-control"><?php echo $perSoalEdit->soal_jwb3 ?></textarea>
	</div>
	<div class="input-group mb-3">
        <div class="input-group-prepend">
		  	<span class="input-group-text">D</span>
			<div class="input-group-text">
		  		<input <?php if($perSoalEdit->soal_jawaban==$perSoalEdit->soal_jwb4){echo "checked";} ?> value="soal_jwb4" type="radio" name="new_soal_jawaban">
			</div>
		</div>
	  	<!-- <input name="new_soal_jwb4" value="<?php //echo $perSoalEdit->soal_jwb4 ?>" required type="text" class="form-control" placeholder="Jawaban D"> -->
		<textarea name="new_soal_jwb4" class="form-control"><?php echo $perSoalEdit->soal_jwb4 ?></textarea>
	</div>
	<div class="input-group mb-3">
        <div class="input-group-prepend">
		  	<span class="input-group-text">E</span>
			<div class="input-group-text">
		  		<input <?php if($perSoalEdit->soal_jawaban==$perSoalEdit->soal_jwb5){echo "checked";} ?> value="soal_jwb5" type="radio" name="new_soal_jawaban">
			</div>
		</div>
	  	<!-- <input name="new_soal_jwb5" value="<?php //echo $perSoalEdit->soal_jwb5 ?>" required type="text" class="form-control" placeholder="Jawaban E"> -->
		<textarea name="new_soal_jwb5" class="form-control"><?php echo $perSoalEdit->soal_jwb5 ?></textarea>
	</div>	
    <input type="submit" value="update" name="editSoal" class="btn btn-success">
    <a href="<?php echo base_url('welcome/perSoal/').$perSoalEdit->soal_pelajaran ?>" class="btn btn-danger">Batal</a>
<?php form_close(); ?>