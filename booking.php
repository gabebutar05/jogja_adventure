<?php
session_start();
error_reporting(0);
include('includes/config.php');
include('includes/format_rupiah.php');

if(strlen($_SESSION['ulogin'])==0){ 
	header('location:index.php');
}else{
	$tglnow   = date('Y-m-d');
	$tglmulai = strtotime($tglnow);
	$jmlhari  = 86400*1;
	$tglplus	  = $tglmulai+$jmlhari;
	$now = date("Y-m-d",$tglplus);

if(isset($_POST['submit'])){
	$fromdate=$_POST['fromdate'];
	$todate=$_POST['todate'];
	$driver=$_POST['driver'];
	$vid=$_POST['vid'];
	$pickup=$_POST['pickup'];
	$jumlah_boking = $_POST['jumlah_boking'];
//cek
// $sql 	= "SELECT kode_booking FROM cek_booking WHERE tgl_booking between '$fromdate' AND '$todate' AND id_barang='$vid' AND status!='Cancel'";
// $query 	= mysqli_query($koneksidb,$sql);
// if(mysqli_num_rows($query)>0){
// 		echo " <script> alert ('Alat tidak tersedia di tanggal yang anda pilih, silahkan pilih tanggal lain!'); 
// 		</script> ";
// 	}else{
		echo "<script type='text/javascript'> document.location = 'booking_ready.php?vid=$vid&mulai=$fromdate&selesai=$todate&driver=$driver&pickup=$pickup&jumlah=$jumlah_boking'; </script>";
	//}
}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Jogja Adventure</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/adv1.png">
<!-- Google-Font-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->  
</head>
<body>

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>
<!--Page Header-->
<!-- /Header --> 

<?php 
$vid=$_GET['vid'];
$useremail=$_SESSION['login'];
$sql1 = "SELECT barang.*,merek.* FROM barang,merek WHERE merek.id_merek=barang.id_merek and barang.id_barang='$vid'";
$query1 = mysqli_query($koneksidb,$sql1);
$result = mysqli_fetch_array($query1);
?>
<script type="text/javascript">
function valid()
{
	if(document.sewa.todate.value < document.sewa.fromdate.value){
		alert("Tanggal selesai harus lebih besar dari tanggal mulai sewa!");
		return false;
	}
	if(document.sewa.fromdate.value < document.sewa.now.value){
		alert("Tanggal sewa minimal H-1!");
		return false;
	}

return true;
}
</script>

	<section class="user_profile inner_pages">
	<div class="container">
	<div class="col-md-6 col-sm-8">
	      <div class="product-listing-img"><img src="admin/img/vehicleimages/<?php echo htmlentities($result['image1']);?>" class="img-responsive" alt="Image" /> </a> </div>
          <div class="product-listing-content">
            <h5><?php echo htmlentities($result['nama_merek']);?> , <?php echo htmlentities($result['nama_barang']);?></a></h5>
            <p class="list-price"><?php echo htmlentities(format_rupiah($result['harga']));?> / Hari</p>
            <ul>
              <li><i class="fa fa-shopping-bag" aria-hidden="true"></i><?php echo htmlentities($result['seating']);?> Stok</li>

              <!--<li><i class="fa fa-calendar" aria-hidden="true"></i><?php echo htmlentities($result['tahun']);?> </li>-->
              <!--<li><i class="fa fa-toggle-on" aria-hidden="true"></i><?php echo htmlentities($result['bb']);?></li>-->

              <?php if($result['bb'] == 'Tersedia'){?>
                <li><i class="fa fa-toggle-on" aria-hidden="true"></i><?php echo htmlentities($result['bb']);?></li>
            <?php }else{?>
                <li><i class="fa fa-toggle-on" aria-hidden="true"></i><?php echo htmlentities($result['bb']);?></li>
            <?php }?>

            </ul>
          </div>	
	</div>
	
	<div class="user_profile_info">	
		<div class="col-md-12 col-sm-10">
        <form method="post" name="sewa" onSubmit="return valid();"> 
			<input type="hidden" class="form-control" name="vid"  value="<?php echo $vid;?>"required>
            <div class="form-group">
			<label>Tanggal Mulai</label>
				<input type="date" class="form-control" name="fromdate" placeholder="From Date(dd/mm/yyyy)" required>
				<input type="hidden" name="now" class="form-control" value="<?php echo $now;?>">
            </div>
            <div class="form-group">
			<label>Tanggal Selesai</label>
				<input type="date" class="form-control" name="todate" placeholder="To Date(dd/mm/yyyy)" required>
            </div>
			<div class="form-group">
			<label>Metode Pickup</label><br/>
				<select class="form-control" name="pickup" required>
					<option value="">== Metode Pickup ==</option>
					<option value="Ambil Sendiri">Ambil Sendiri</option>
					<option value="Pickup Sesuai Alamat">Kirim Sesuai Alamat</option>
				</select>
            </div>
      
       <div class="form-group">
			<label>Jumlah Alat</label><br/>
				<input type="number" min="1" max="<?=$result['seating']?>" value="1" name="jumlah_boking" class="form-control" required> &nbsp;
				   </div>
			<br/>			
			<div class="form-group center" align="center">
                <!--<input type="submit" name="submit" value="Cek Ketersediaan" class="btn btn-block">-->
            <?php if($result['bb'] == 'Tersedia'){?>
                        <button type="submit" name= "submit" class="btn btn-primary float-right">Cek Ketersediaan</button>
                    <?php }else{?>
                        <button type="submit" name="submit" class="btn btn-danger float-right" disabled>Cek Ketersediaan</button>
                    <?php }?>
                    </div>
        </form>
		</div>
		</div>
      </div>
</section>
<!--/my-vehicles--> 
<?php include('includes/footer.php');?>

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>
<?php } ?>