<?php require('header.php'); ?>

<!-- Featured News Start -->
<h2 class="titulo_principal">Últimas Noticias</h2>
<div class="news-featured">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<?php
			// Getting the first news that is Published and Featured
			$statement = $pdo->prepare("SELECT * FROM tbl_news WHERE is_featured=1 AND status=? ORDER BY news_id DESC");
			$statement->execute(array('Published'));
			$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
			foreach ($result as $row) 
			{
				?>
				<!--start card inicio -->
				<div class="thumbnailcero">

				<!--start imagen al inicio -->
				<div class="item first-col" >
					<img style="max-width:100%;width:auto;height:auto;" src="<?php echo BASE_URL; ?>assets/uploads/<?php if($row['photo']=='') { echo 'no-photo1.jpg'; } else { echo $row['photo']; } ?>" alt="">
				</div>
				
				<!--end imagen al inicio -->

				<!--start titulo de card -->
				<div class="text">
						<div class="inner">
							<h2><?php echo $row['news_title']; ?></h2>
							<p>
								<?php
								$day = substr($row['news_date'],0,2);
								$month = substr($row['news_date'],3,2);
								$year = substr($row['news_date'],6,4);
								if($month=='01') {$month_detail='Enero';}
								if($month=='02') {$month_detail='Febrero';}
								if($month=='03') {$month_detail='Marzo';}
								if($month=='04') {$month_detail='Abril';}
								if($month=='05') {$month_detail='Mayo';}
								if($month=='06') {$month_detail='Junio';}
								if($month=='07') {$month_detail='Julio';}
								if($month=='08') {$month_detail='Agosto';}
								if($month=='09') {$month_detail='Setiembre';}
								if($month=='10') {$month_detail='Octubre';}
								if($month=='11') {$month_detail='Novienbre';}
								if($month=='12') {$month_detail='Diciembre';}
								echo $day.' '.$month_detail.', '.$year;
								?>
							</p>
						</div>
						<a href="<?php echo BASE_URL.URL_NEWS.$row['news_slug']; ?>"></a>

						
					</div>
					
				<!--end titulo de card -->
				</div>
				<!--end card inicio -->
				<?php
				break;
			}
			?>
			</div>
		</div>
			<!--start images secundarias -->
		<div class="thumbnailcero">
		<div class="row" style="margin-top: 30px;">			
			
			<?php
			// Getting the second and third news that are Published and Featured
			// All featured news that are after third news will be skipped
			$i=0;
			$statement = $pdo->prepare("SELECT * FROM tbl_news WHERE is_featured=1 AND status=? ORDER BY news_id DESC");
			$statement->execute(array('Published'));
			$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
			foreach ($result as $row) 
			{
				$i++;
				if($i==1) {continue;}
				if($i>4) {break;}
				?>
				<div class="col-md-4">
					<div class="item second-col">
						<img style="max-width:100%;width:auto;height:auto;" src="<?php echo BASE_URL; ?>assets/uploads/<?php if($row['photo']=='') { echo 'no-photo1.jpg'; } else { echo $row['photo']; } ?>" alt="">
						<div class="text">
							<div class="inner">
								<h2><?php echo $row['news_title']; ?></h2>
								<p>
									<?php
									$day = substr($row['news_date'],0,2);
									$month = substr($row['news_date'],3,2);
									$year = substr($row['news_date'],6,4);
									if($month=='01') {$month_detail='Enero';}
									if($month=='02') {$month_detail='Febrero';}
									if($month=='03') {$month_detail='Marzo';}
									if($month=='04') {$month_detail='Abril';}
									if($month=='05') {$month_detail='Mayo';}
									if($month=='06') {$month_detail='Junio';}
									if($month=='07') {$month_detail='Julio';}
									if($month=='08') {$month_detail='Agosto';}
									if($month=='09') {$month_detail='Setiembre';}
									if($month=='10') {$month_detail='Octubre';}
									if($month=='11') {$month_detail='Novienbre';}
									if($month=='12') {$month_detail='Diciembre';}
									echo $day.' '.$month_detail.', '.$year;
									?>
								</p>
							</div>
							<a href="<?php echo BASE_URL.URL_NEWS.$row['news_slug']; ?>"></a>
						</div>
					</div>
				</div>
				<?php
				}
				?>
			</div>
		</div>
		</div>
	</div>
</div>
<!-- Featured News End -->


<!-- Ad1 Start -->
<?php
// Getting the advertisement that will be shown right below the featured news section
$statement = $pdo->prepare("SELECT * FROM tbl_advertisement WHERE adv_id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) 
{
	$adv_photo = $row['adv_photo'];
	$adv_url = $row['adv_url'];
	$adv_status = $row['adv_status'];
}
?>
<?php if($adv_status == 'Show'): ?>
<div class="ad1">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<?php if($adv_url == ''): ?>
					<img src="assets/uploads/<?php echo $adv_photo; ?>">
				<?php else: ?>
					<a href="<?php echo $adv_url; ?>"><img src="assets/uploads/<?php echo $adv_photo; ?>"></a>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>
<!-- Ad1 End -->

<!-- Blog Start -->
<div class="news">
	<div class="container">

		<div class="row">
			<div class="col-md-8">
				<?php
				// Gettting all the home page categories that were set from admin panel
				// For each category, layout will be checked and news will be shown under that particular layout
				$statement = $pdo->prepare("SELECT 

				                           t1.category_id,
				                           t1.category_order,
				                           t1.category_layout,

				                           t2.category_id,
				                           t2.category_name,
				                           t2.category_slug

				                           FROM tbl_home_category t1
				                           JOIN tbl_category t2
				                           ON t1.category_id = t2.category_id

				                           WHERE t1.category_order!=?

				                           ORDER BY t1.category_order ASC");
				$statement->execute(array(' '));
				$statement->rowCount();
				$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
				foreach ($result as $row) 
				{
					?>
					<div class="row">
						<div class="col-md-12">
							<div class="heading">
								<h2><a href="<?php echo URL_CATEGORY.$row['category_slug']; ?>"><?php echo $row['category_name']; ?></a></h2>
							</div>
						</div>
					</div>
					<?php if($row['category_layout'] == '1 Column'): ?>
					<div class="row">
						<div class="col-sm-12 col-md-12">
							
							<?php
							$count=0;
							$news_id_arr = array();
							$statement1 = $pdo->prepare("SELECT * FROM tbl_news_category WHERE category_id=? AND access=1");
							$statement1->execute(array($row['category_id']));
							$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result1 as $row1) 
							{
								$news_id_arr[] = $row1['news_id'];
							}

							$statement1 = $pdo->prepare("SELECT * FROM tbl_news WHERE status=? ORDER BY news_id DESC");
							$statement1->execute(array('Published'));
							$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result1 as $row1) 
							{
								if(in_array($row1['news_id'],$news_id_arr))
								{
									$count++;
									if($count>4) {break;}
									?>
									<div class="thumbnail2">
										<div class="photo-content">
											<div class="photo" style="background-image: url(<?php echo BASE_URL; ?>assets/uploads/<?php if($row1['photo'] == ''){echo 'no-photo1.jpg';}else{echo $row1['photo'];} ?>);"></div>
										</div>
										<div class="caption">
											<h3><a href="<?php echo BASE_URL.URL_NEWS.$row1['news_slug']; ?>"><?php echo $row1['news_title']; ?></a></h3>
											<h4>
												<span><i class="fa fa-user"></i> <?php echo $row1['publisher']; ?> </span>
												<span><i class="fa fa-calendar"></i> 
												<?php
												$day = substr($row1['news_date'],0,2);
												$month = substr($row1['news_date'],3,2);
												$year = substr($row1['news_date'],6,4);
												if($month=='01') {$month_detail='Enero';}
												if($month=='02') {$month_detail='Febrero';}
												if($month=='03') {$month_detail='Marzo';}
												if($month=='04') {$month_detail='Abril';}
												if($month=='05') {$month_detail='Mayo';}
												if($month=='06') {$month_detail='Junio';}
												if($month=='07') {$month_detail='Julio';}
												if($month=='08') {$month_detail='Agosto';}
												if($month=='09') {$month_detail='Setiembre';}
												if($month=='10') {$month_detail='Octubre';}
												if($month=='11') {$month_detail='Novienbre';}
												if($month=='12') {$month_detail='Diciembre';}
												echo $day.' '.$month_detail.', '.$year;
												?>
												</span>
											</h4>
											<p>
												<?php echo substr($row1['news_content'],0,200).' ...'; ?>
											</p>
										</div>
									</div>
									<?php
									}
								}
							?>							
						</div>
					</div>
					<?php endif; ?>


					<?php if($row['category_layout'] == '2 Columns'): ?>
					<div class="row">
						<?php
							$news_id_arr = array();
							$statement1 = $pdo->prepare("SELECT * FROM tbl_news_category WHERE category_id=? AND access=1");
							$statement1->execute(array($row['category_id']));
							$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result1 as $row1) 
							{
								$news_id_arr[] = $row1['news_id'];
							}

							$statement1 = $pdo->prepare("SELECT * FROM tbl_news WHERE status=? ORDER BY news_id DESC");
							$statement1->execute(array('Published'));
							$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result1 as $row1) 
							{
								if(in_array($row1['news_id'],$news_id_arr))
								{
									?>
									<div class="col-sm-6 col-md-6">
										<div class="thumbnail">
											<div class="photo" style="background-image: url(<?php echo BASE_URL; ?>assets/uploads/<?php if($row1['photo'] == ''){echo 'no-photo1.jpg';}else{echo $row1['photo'];} ?>);"></div>
											<div class="caption">
												<h3><a href="<?php echo BASE_URL.URL_NEWS.$row1['news_slug']; ?>"><?php echo $row1['news_title']; ?></a></h3>
												<h4>
													<span><i class="fa fa-user"></i> <?php echo $row1['publisher']; ?> </span>
													<span><i class="fa fa-calendar"></i> 
													<?php
													$day = substr($row1['news_date'],0,2);
													$month = substr($row1['news_date'],3,2);
													$year = substr($row1['news_date'],6,4);
													if($month=='01') {$month_detail='Enero';}
													if($month=='02') {$month_detail='Febrero';}
													if($month=='03') {$month_detail='Marzo';}
													if($month=='04') {$month_detail='Abril';}
													if($month=='05') {$month_detail='Mayo';}
													if($month=='06') {$month_detail='Junio';}
													if($month=='07') {$month_detail='Julio';}
													if($month=='08') {$month_detail='Agosto';}
													if($month=='09') {$month_detail='Setiembre';}
													if($month=='10') {$month_detail='Octubre';}
													if($month=='11') {$month_detail='Novienbre';}
													if($month=='12') {$month_detail='Diciembre';}
													echo $day.' '.$month_detail.', '.$year;
													?>
													</span>
												</h4>
												<p>
													<?php echo substr($row1['news_content'],0,200).' ...'; ?>
												</p>
											</div>
										</div>
									</div>
									<?php
									break;
								}
							}
						?>

						<div class="col-sm-6 col-md-6">
							<?php
								$count = 0;
								$news_id_arr = array();
								$statement1 = $pdo->prepare("SELECT * FROM tbl_news_category WHERE category_id=? AND access=1");
								$statement1->execute(array($row['category_id']));
								$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
								foreach ($result1 as $row1) 
								{
									$news_id_arr[] = $row1['news_id'];
								}

								$statement1 = $pdo->prepare("SELECT * FROM tbl_news WHERE status=? ORDER BY news_id DESC");
								$statement1->execute(array('Published'));
								$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);							
								foreach ($result1 as $row1) 
								{
									if(in_array($row1['news_id'],$news_id_arr))
									{
										$count++;
										if($count>5) {break;}
										?>
										<div class="thumbnail1">
											<div class="photo-content">
												<div class="photo" style="background-image: url(<?php echo BASE_URL; ?>assets/uploads/<?php if($row1['photo'] == ''){echo 'no-photo1.jpg';}else{echo $row1['photo'];} ?>);"></div>
											</div>
											<div class="caption">
												<h3><a href="<?php echo BASE_URL.URL_NEWS.$row1['news_slug']; ?>"><?php echo $row1['news_title']; ?></a></h3>
												<h4>
													<span><i class="fa fa-user"></i> <?php echo $row1['publisher']; ?> </span>
													<span><i class="fa fa-calendar"></i> 
													<?php
													$day = substr($row1['news_date'],0,2);
													$month = substr($row1['news_date'],3,2);
													$year = substr($row1['news_date'],6,4);
													if($month=='01') {$month_detail='Enero';}
													if($month=='02') {$month_detail='Febrero';}
													if($month=='03') {$month_detail='Marzo';}
													if($month=='04') {$month_detail='Abril';}
													if($month=='05') {$month_detail='Mayo';}
													if($month=='06') {$month_detail='Junio';}
													if($month=='07') {$month_detail='Julio';}
													if($month=='08') {$month_detail='Agosto';}
													if($month=='09') {$month_detail='Setiembre';}
													if($month=='10') {$month_detail='Octubre';}
													if($month=='11') {$month_detail='Novienbre';}
													if($month=='12') {$month_detail='Diciembre';}
													echo $day.' '.$month_detail.', '.$year;
													?>
													</span>
												</h4>
											</div>
										</div>
										<?php
									}
								}
							?>
							
						</div>
					</div>
					<?php endif;
				}
				?>

			</div>

			
			<div class="col-md-4">
				<!-- Calling the sidebar--> 
				 <?php include('sidebar.php'); ?>
			</div>
			
		</div>
	</div>
</div>
<!-- Blog End -->

<?php require_once('footer.php'); ?>