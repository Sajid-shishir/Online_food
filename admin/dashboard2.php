<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['fosaid']==0)) {
  header('location:logout.php');
  } 
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>CFO|| Admin Panel</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="assets/plugins/morris/morris.css">

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>


    </head>


    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container">

        <!-- header -->
        <?php include_once('includes/head.php');?>
        <!-- End header-->

        <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ibox">
                            <div class="ibox-title">
                                <?php $query=mysqli_query($con,"Select * from tblorderaddresses");
                                $totalorder=mysqli_num_rows($query);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="all-order.php"
                                    style="font-size: 20px"><strong>All Order's</strong></a>
                                <h5></h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $totalorder;?></h1>

                                <small>All order's</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query1=mysqli_query($con,"Select * from  tblorderaddresses where OrderFinalStatus is null");
                                $notconfirmedorder=mysqli_num_rows($query1);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="notconfirmedyet.php"
                                    style="font-size: 20px"><strong>Not Confirmed Order's</strong></a>


                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $notconfirmedorder;?></h1>
                                <small>Not Confirmed Order's</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query2=mysqli_query($con,"Select * from  tblorderaddresses where OrderFinalStatus ='Order Confirmed'");
                                $conforder=mysqli_num_rows($query2);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="confirmed-order.php"
                                    style="font-size: 20px"><strong>Confirmed Order's</strong></a>

                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $conforder;?></h1>

                                <small>Confirmed Order's</small>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">

                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query3=mysqli_query($con,"Select * from  tblorderaddresses where OrderFinalStatus ='Food being Prepared'");
                                $beigpre=mysqli_num_rows($query3);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="foodbeingprepared.php"
                                    style="font-size: 20px"><strong>Food being Prepared</strong></a>


                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $beigpre;?></h1>
                                <small>Food is being Prepared</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query4=mysqli_query($con,"Select * from tblorderaddresses where OrderFinalStatus ='Food Pickup'");
                                $foodpickup=mysqli_num_rows($query4);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="food-pickup.php"
                                    style="font-size: 20px"><strong> Food Pickup</strong></a>

                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $foodpickup;?></h1>

                                <small> Food Pickup</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query5=mysqli_query($con,"Select * from  tblorderaddresses where OrderFinalStatus ='Food Delivered'");
                                $fooddel=mysqli_num_rows($query5);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="food-delivered.php"
                                    style="font-size: 20px"><strong>Total Food Delivered</strong></a>

                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $fooddel;?></h1>
                                <small>Total Food Delivered</small>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query1=mysqli_query($con,"Select * from  tblorderaddresses where OrderFinalStatus='Order Cancelled'");
                                $notconfirmedorder=mysqli_num_rows($query1);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="canclled-order.php"
                                    style="font-size: 20px"><strong>Cancelled Order's</strong></a>


                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $notconfirmedorder;?></h1>
                                <small>Cancelled Order's</small>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <?php $query=mysqli_query($con,"Select * from tbluser");
                                $usercount=mysqli_num_rows($query);
                                ?>
                                <a class="text-muted text-uppercase m-b-20" href="user-detail.php"
                                    style="font-size: 20px"><strong>Total Registered User's</strong></a>

                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins"><?php echo $usercount;?></h1>

                                <small>Total Registered User's</small>
                            </div>
                        </div>
                    </div>


                </div>
            </div>


        <div class="wrapper">
            <div class="container">

                
               

            </div>
                <!-- end row -->


                <!-- Footer -->
               <?php include_once('includes/foot.php');?>
                <!-- End Footer -->

            </div>
            <!-- end container -->



            <!-- Right Sidebar -->
            
            <!-- /Right-bar -->

        </div>



        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>

        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
        <script src="assets/plugins/jquery-knob/jquery.knob.js"></script>

        <!--Morris Chart-->
		<script src="assets/plugins/morris/morris.min.js"></script>
		<script src="assets/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>