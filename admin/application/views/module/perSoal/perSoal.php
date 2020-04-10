<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Create Soal</h1>
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
<!-- Form Soal -->
<nav>
	<div class="nav nav-tabs" id="nav-tab" role="tablist">
	<a class="nav-item nav-link" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Soal Pilihan Ganda</a>
	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Soal Essay</a>
</div>
</nav>
	<div class="tab-content" id="nav-tabContent">
	<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
		<form action="<?php echo base_url('welcome/tambahSoal/'.$this->uri->segment('3')) ?>" class="form mb-4 mt-2" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<textarea name="soal_deskripsi" class="form-control" cols="50" rows="10"></textarea>
			</div>
			<label>Jawaban</label><br>
			<small class="text-muted">*Isi jawaban dan pilih salah satu jawaban yang benar</small>
			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">A</span>
					<div class="input-group-text">
						<input value="soal_jwb1" required type="radio" name="soal_jawaban">
					</div>
				</div>
				<textarea name="soal_jwb1" class="form-control"></textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">B</span>
					<div class="input-group-text">
						<input value="soal_jwb2" type="radio" name="soal_jawaban">
					</div>
				</div>
				<textarea name="soal_jwb2" class="form-control"></textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">C</span>
					<div class="input-group-text">
						<input value="soal_jwb3" type="radio" name="soal_jawaban">
					</div>
				</div>
				<textarea name="soal_jwb3" class="form-control"></textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">D</span>
					<div class="input-group-text">
						<input value="soal_jwb4" type="radio" name="soal_jawaban">
					</div>
				</div>
				<textarea name="soal_jwb4" class="form-control"></textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">E</span>
					<div class="input-group-text">
						<input value="soal_jwb5" type="radio" name="soal_jawaban">
					</div>
				</div>
				<textarea name="soal_jwb5" class="form-control"></textarea>
			</div>	
			<input type="submit" name="submit" value="simpan" class="btn btn-primary btn-sm float-right">
		</form>

		<!-- Daftar List Soal -->
		<?php $no=1; foreach($perSoal AS $data) { ?>
			<div class="card bg-light">
				<div class="card-header">
					<?php echo "<b>Soal No. ".$no."</b>" ?>
					<div class="float-right">
						<a href="<?php echo base_url("welcome/perSoalEdit/".$data->soal_id.'/'.$data->soal_pelajaran) ?>" class="btn btn-info btn-sm" >Edit</a>
					</div>
				</div>
				<div class="card-body">
					<?php echo $data->soal_deskripsi."</br>" ?>
					<form>
						<label class="jawaban w-50">
							<div><?php echo $data->soal_jwb1 ?></div>

							<input @change="updateJawaban(<?php echo $data->soal_id ?>,'soal_jwb1')" <?php if($data->soal_jawaban==$data->soal_jwb1){echo "checked";} ?> type="radio" name="pilgan" >
							<span class="checkmark">A</span>
						</label>
						<label class="jawaban w-50"><?php echo $data->soal_jwb2 ?>
							<input @change="updateJawaban(<?php echo $data->soal_id ?>,'soal_jwb2')" <?php if($data->soal_jawaban==$data->soal_jwb2){echo "checked";} ?> type="radio" name="pilgan" >
							<span class="checkmark">B</span>
						</label>
						<label class="jawaban w-50"><?php echo $data->soal_jwb3 ?>
							<input @change="updateJawaban(<?php echo $data->soal_id ?>,'soal_jwb3')" <?php if($data->soal_jawaban==$data->soal_jwb3){echo "checked";} ?> type="radio" name="pilgan" >
							<span class="checkmark">C</span>
						</label>
						<label class="jawaban w-50"><?php echo $data->soal_jwb4 ?>
							<input @change="updateJawaban(<?php echo $data->soal_id ?>,'soal_jwb4')" <?php if($data->soal_jawaban==$data->soal_jwb4){echo "checked";} ?> type="radio" name="pilgan" >
							<span class="checkmark">D</span>
						</label>
						<label class="jawaban w-50"><?php echo $data->soal_jwb5 ?>
							<input @change="updateJawaban(<?php echo $data->soal_id ?>,'soal_jwb5')" <?php if($data->soal_jawaban==$data->soal_jwb5){echo "checked";} ?> type="radio" name="pilgan" >
							<span class="checkmark">E</span>
						</label>
					</form>
				</div>
			</div>
		<?php $no++; } ?>
	</div>
	<div class="tab-pane fade show active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
		<div class="row mb-5 mt-2">
			<div class="col-12">
				<?php echo form_open("welcome/saveEssay/".$perSoal[0]->soal_pelajaran); ?>
				<div class="form-group">
					<textarea name="soal_deskripsi" class="form-control"></textarea>
				</div>
				<input type="submit" value="Simpan" class="btn btn-primary btn-sm float-right">
				<?php form_close(); ?>
			</div>
		</div>

		<!-- Daftar List Soal Essay -->
		<?php $no=1; foreach($listEssay AS $data) { ?>
			<div class="card bg-light">
				<div class="card-header">
					<?php echo "<b>Soal No. ".$no."</b>" ?>
					<div class="float-right">
						<a href="<?php echo base_url("welcome/EditEssay/".$data->soal_id) ?>" class="btn btn-info btn-sm" >Edit</a>
					</div>
				</div>
				<div class="card-body">
					<?php echo $data->soal_deskripsi."</br>" ?>
				</div>
			</div>
		<?php $no++; } ?>
	</div>
</div>
