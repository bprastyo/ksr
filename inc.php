<?php
@session_start();
	@include "session.php";
	include 'dist/koneksi.php';
?>
<div id="proses">
<html>
	<head>
		<title>Aplikasi Kasir Budi 2.0 </title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<?php 
		include"dist/javascript.php";?>
		<link href="dist/style.css" rel="stylesheet" type="text/css">
		<link href="../dist/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		<!--
		.style4 {font-weight: bold; font-family:"Arial Black";}
		.style5 {font-weight: bold}
		-->
		</style>
	</head>
<form id="form1" method="post" >

<body class="body">

<br>
<table width="720px" align="center" cellpadding="0" cellspacing="0" bordercolor="#F0F0F0" id="Table_01" class="center" bgcolor="#FFFFF0" style="border-radius: 15px; border:1; border-color: grey">
	<tr>
		<td rowspan="4"  width="25" height="41" alt=""></td>
		<td height="41" colspan="5">
			<div align="center" class="tombol style4">Aplikasi Kasir</div>
	    </td>
		<td height="41" colspan="2">&nbsp;<!-- Atas Bagian Promo -->
		</td>
        <td  width="270" height="41" bordercolor="#000000" alt="">

			<a href="#popup">Laporan</a>||
			    <div id="popup">
			    	<div class="window">
			        	<a href="#" class="close-button" title="Close">Tutup</a>
			            <?php @include "inc/laporan.php";?>
			        </div>
			    </div>

			    Kasir : <?php echo @$_SESSION['user_session'];?> <a href="logout.php">Logout</a>
  		</td>
		<td rowspan="4"  width="30" height="41" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="2" valign="top" alt="">
		  	<div align="center"><?php include "INC/tombolkiri2.php";?></div>
		</td>
		<td width="15px" height="22" valign="top" bordercolor="#000000">
		  	<div align="center" id="hitung"><?php include "INC/atas.php";?></div>
		</td>
		<td colspan="3"  rowspan="3" valign="top" bordercolor="#000000"  alt="">
			
		  	<div align="center" id="periksahitung"><?php @include"INC/hasilhitung.php";?></div>  
		</td>
	</tr>
	<tr>
		<td width="305" valign="top" bordercolor="#000000">
	        <p>		  </p>
			<div id="tampilmenu" align="center"><?php @include "INC/tampilmenu.php";?></div>
	    </td>
	</tr>
</table>
</div>
<!-- End ImageReady Slices -->
</body>
</form> 
