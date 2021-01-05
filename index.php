<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
{
$foodid=$_POST['foodid'];
$userid= $_SESSION['fosuid'];
$query=mysqli_query($con,"insert into tblorders(UserId,FoodId) values('$userid','$foodid') ");
if($query)
{
 echo "<script>alert('Food has been added into the cart');</script>";   
} else {
 echo "<script>alert('Something went wrong.');</script>";      
}
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title> Catch-Food Online</title>

    <!-- google fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600&family=Raleway:ital,wght@0,200;0,300;0,500;0,600;1,200&display=swap"
        rel="stylesheet">

    <!-- animations css -->
    
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet"> -->

    <!-- theme custom css -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!--header starts-->
    <header>
        <div class="header-area">
            <!-- .navbar -->
            <?php include_once('includes/header.php');?>
            <!-- /.navbar -->
        </div>
    </header>
    <!-- header end -->

    <!-- banner part starts -->
    <section class="banner-area">

        <div class="container">
            <div class="banner-wrapper">
                <div class="banner-left">
                    <h2 style="color: red"> Order Online & Get fast Delivery</h2>
                    <p>Find your favourite food!</p>
                    <div class="banner-form">
                        <form method="post" name="search" action="search-food.php">

                            <div class="form-group">
                                <input type="text" class="form-control" id="exampleInputAmount" name="searchdata"
                                    id="searchdata" placeholder="Search your food here..">
                            </div>

                            <button onclick="location.href='search-food.php'" type="submit" name="search"
                                class="btn  btn-lg">Search food</button>
                        </form>
                    </div>
                </div>
            </div>          
        </div>
    </section>
    <!-- banner part ends -->

    <!-- location match part starts -->
    <!-- <div class="location-match">
        <div class="container"> <span>Popular Delicious Foods Here: <span class="primary-color">All over Dhaka<span>
                        <i class="fas fa-map-marker-alt"></i>
                    </span>
        </div>
    </div> -->
    <!-- location match part ends -->

    <!-- Popular block starts -->
    <section class="popular">
        <div class="container">

            <div class="section-head">
                <h2 style="color: gray"  class="section-title"> Our Popular Foods </h2>
                
            </div>


            <div class="items-wrapper">
                <!-- Each popular food item starts -->
                <?php                   
                $ret=mysqli_query($con,"select * from tblfood order by rand() limit 5");
                $cnt=1;
                while ($row=mysqli_fetch_array($ret)) {
                ?>
                <div class="food-item">
                    <div class="food-item-wrap">
                        <div class="food-img"><img src="admin/itemimages/<?php echo $row['Image'];?>" width="400"
                                height="180">
                            <span class="price">Taka <?php echo $row['ItemPrice'];?></span>
                        </div>
                        <div class="content">
                            <h5><a
                                    href="food-detail.php?fid=<?php echo $row['ID'];?>"><?php echo $row['ItemName'];?></a>
                            </h5>
                            <div class="product-name"><?php echo substr($row['ItemDes'],0,100);?></div>
                            <div class="price-btn-block">
                                <?php if($_SESSION['fosuid']==""){?>
                                <a href="login.php" class="custom-btn">Add to Cart</a>
                                <?php } else {?>
                                <form method="post">
                                    <input type="hidden" name="foodid" value="<?php echo $row['ID'];?>">
                                    <button type="submit" name="submit" class="custom-btn">Add to cart
                                        </button>
                                </form>
                                <?php }?>
                            </div>
                        </div>

                    </div>
                </div>
                <?php } ?>
                <!-- Each popular food item starts -->
                <!-- Each popular food item starts -->

            </div>
        </div>
    </section>
    <!-- Popular block ends -->

    <!-- How it works block starts -->
    
    <!-- How it works block ends -->
    <!-- Featured restaurants starts -->

    <!-- Featured restaurants ends -->

    <!-- start: FOOTER -->
    <?php include_once('includes/footer.php');?>
    <!-- end:Footer -->


    <!-- ==============  jquery and theme library scripts =========== -->
    <script src="js/jquery.min.js"></script>
    <?php if(isset($_SESSION['fosuid'])): ?>
    <script>
        $(document).ready(function(){
            $('.body-head').click(function(){
                $('.message-box').toggleClass('msg-open')
            })

            var date = new Date();
            var options = {day:"numeric", month:"short", hour:"numeric", minute:"numeric"};
            $('#msg').keyup(function(e){
                e.preventDefault();
                if(e.keyCode == 13){
                    var msg = $(this).val().trim();
                    $.ajax({
                        url:'ajax/messaging/ajax.message.php',
                        method:'GET',
                        data:{
                            send:1,
                            msg:msg
                        },
                        success:function(resp){
                            if(resp.indexOf('success') >= 0){
                                $('.inbox').append(`
                                <div class="msg-text">
                                <p class="text"> <span>${msg}</span> </p>
                                <p class="date"> <span style="float:right">${date.toLocaleDateString("en-US", options)}</span> </p>
                                </div>
                                `);
                            }
                        }
                    });
                    $(this).val('');
                }
            })

            function get_messages(){
                $.ajax({
                    url:'ajax/messaging/ajax.message.php',
                    method:'GET',
                    data:{
                        get_messages:1
                    },
                    success:function(resp){
                        if(resp != ''){
                            var data = JSON.parse(resp);
                            var sessionID = <?php if(isset($_SESSION['fosuid'])){echo $_SESSION['fosuid'] ;} ?>;
                            var messages = '';
                            for(msg of data){
                                if(msg.sender == sessionID){
                                    messages += `
                                    <div class="msg-text" style="float:right;">
                                    <p class="text"> <span>${msg.message}</span> </p>
                                    <p class="date"> <span style="float:right">${msg.date}</span> </p>
                                    </div>
                                    `;
                                }else{
                                    messages += `
                                    <div class="msg-text" style="float:left;">
                                    <p class="text"> <span>${msg.message}</span> </p>
                                    <p class="date"> <span style="float:right">${msg.date}</span> </p>
                                    </div>
                                    `;
                                }
                            }

                            $('.inbox').html(messages);
                        }
                    }
                });
            }

            setInterval(get_messages, 5000);
        })


    </script>
    <?php endif ?>
    <script src="js/animsition.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
   

    <!-- font Awesome Icon Script -->
    <script src="https://kit.fontawesome.com/bdb42816d8.js" crossorigin="anonymous"></script>
    

</body>

</html>