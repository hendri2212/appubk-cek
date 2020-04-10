<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Aplikasi USBN SMKN 1 Kotabaru</title>
	<link rel="stylesheet" href="<?=base_url('./assets/css/bootstrap.min.css') ?>">
	<link rel="stylesheet" href="<?=base_url('./assets/fontawesome/css/all.min.css') ?>">
	<link rel="stylesheet" href="<?=base_url('./assets/css/style.css?v=1') ?>">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-93480108-4"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-93480108-4');
	</script>


</head>
<body>
		<div id="app" v-cloak>
		<nav class="navbar fixed-top navbar-dark">
		<div class="navbar-brand judulapp">Aplikasi USBN SMKN 1 Kotabaru</div>
			<!-- <div class="navbar nav" style="background-color: #343434;;">
				<img src="<?=base_url('./assets/avatar.gif') ?>" alt="..">	
			</div> -->
		</nav>

				<div>
					<?php echo $content; ?>
				</div>
		</div>
	<!-- <script type="text/javascript">
	    document.getElementById('message').innerHTML = 'Paragraph changed!';
	</script> -->
	<script src="<?php echo base_url('assets/js/vue.js')?>"></script>
	<script src="<?php echo base_url('assets/js/axios.min.js')?>"></script>
	<script src="<?php echo base_url('assets/js/script.js')?>"></script>
	<!-- <script src="<?php //echo base_url('assets/js/jquery.min.js')?>"></script> -->
</body>
</html>