 <div class="topbar-left">
                    <a href="dashboard2.php" class="logo"><span>Catch Food Online</span></a>
                    </div>
                    <!-- End Logo container-->
                        <?php
                $ret1=mysqli_query($con,"select tbluser.FirstName,tblorderaddresses.ID,tblorderaddresses.Ordernumber from tblorderaddresses join tbluser on tbluser.ID=tblorderaddresses.UserId where tblorderaddresses.OrderFinalStatus is null");
                $num=mysqli_num_rows($ret1);

                $msgs=mysqli_query($con,"select tbluser.FirstName,tblchats.message,tblchats.date from tblchats join tbluser on tbluser.ID=tblchats.sender_id where tblchats.status = 'unseen'");
                            $msgcount=mysqli_num_rows($msgs);
                            $adminID = $_SESSION['fosaid'];

                            $conversations = mysqli_query($con, "select * from tblconversations where reciver_id = '$adminID'");

                ?>
<!-- 
             <li class="dropdown">
                 <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                     <i class="fa fa-bell"></i> <span class="label label-primary"><?php echo $num;?></span>
                 </a>

                 <ul class="dropdown-menu dropdown-alerts">
                     <li>
                         <a href="mailbox.html" class="dropdown-item">
                             <div>

                                 <?php if($num>0){
                                while($result=mysqli_fetch_array($ret1))
                                 {
                                 ?>
                                 <a class="dropdown-item"
                                     href="viewfoodorder.php?orderid=<?php echo $result['Ordernumber'];?>"> <i
                                         class="fa fa-envelope fa-fw"></i> #<?php echo $result['Ordernumber'];?> Order
                                     Received from <?php echo $result['FirstName'];?></a>
                                 <?php }} else {?>
                                 <a class="dropdown-item" href="view-allorderfood.php">No New Order Received</a>
                                 <?php } ?>
                             </div>
                         </a>
                     </li>

                 </ul>
             </li>

             <li class="dropdown">
                 <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                 <i class="fa fa-comments"></i>  <span class="label label-primary"><?php echo $msgcount;?></span>
                 </a>

                 <ul class="dropdown-menu dropdown-alerts">
                    <?php if($msgcount > 0):?>
                    
                     <li>
                         <a href="mailbox.html" class="dropdown-item">
                             <div>

                             <?php while($c = mysqli_fetch_array($conversations)): ?>
                                <?php
                                    $c_id = $c['id'];
                                    $msgdata = array();
                                    $getMessage = mysqli_query($con, "select * from tblchats where conversation_id = '$c_id' limit 1");
                                    
                                    $messagedata = mysqli_fetch_array($getMessage);
                                    $userid = $messagedata['sender_id'];
                                    $getUserName = mysqli_query($con, "select FirstName from tbluser where ID = '$userid'");
                                    $getUserArr = mysqli_fetch_array($getUserName);

                                    $userName = $getUserArr['FirstName'];
                                ?>
                                 <a class="dropdown-item"
                                     href="chat.php?cid=<?php echo $c_id; ?>&user=<?php echo $userName;?>"><?php echo $result['Ordernumber'];?> Message
                                     Received from <?php echo $userName;?></a>
                              <?php endwhile ?>
                             </div>
                         </a>
                     </li>
                     <?php endif ?>
                 </ul>
             </li> -->

                    <div class="menu-extras">

                        <ul class="nav navbar-nav navbar-right pull-right">
                            <li>
                                <form role="search" class="navbar-left app-search pull-left hidden-xs">
                                     <input type="text" placeholder="Search by order" class="form-control">
                                     <a href="search.php"><i class="fa fa-search"></i></a>
                                </form>
                            </li>
                            <li class="dropdown user-box">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile " data-toggle="dropdown" aria-expanded="true">
                                    <img src="assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle user-img">
                                    <div class="user-status away"><i class="zmdi zmdi-dot-circle"></i></div>
                                </a>

                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"><i class="ti-user m-r-5"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-settings m-r-5"></i> Settings</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-lock m-r-5"></i> Lock screen</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-power-off m-r-5"></i> Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </div>
                    </div>

                </div>
            </div>

            <div class="navbar-custom">
                <div class="container">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                            <li>
                                <a href="dashboard2.php"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>
                            <li class="has-submenu">
                                <a href="user-detail.php"><i class="fa fa-users"></i> <span> Registered Users </span> </a>
                                <ul class="">
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi zmdi-collection-text"></i><span> Food Category </span> </a>
                                <ul class="submenu">
                                    <li><a href="form-elements.html">Categories</a></li>
                                    <li><a href="form-advanced.html">Manage Categories</a></li>                               
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi zmdi-view-list"></i> <span> Food Menu </span> </a>
                                <ul class="submenu">
                                    <li><a href="tables-basic.html">Add Food</a></li>
                                    <li><a href="tables-datatable.html">Manage Food</a></li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi zmdi-chart"></i><span> Orders </span> </a>
                                <ul class="submenu">
                                    <li><a href="chart-flot.html">Not Confirmed Yet</a></li>
                                    <li><a href="chart-morris.html">Order Confirmed</a></li>
                                    <li><a href="chart-chartist.html">Food Being Prepared</a></li>
                                    <li><a href="chart-chartjs.html">Food Pickup</a></li>
                                    <li><a href="chart-other.html">Food Delivered</a></li>
                                    <li><a href="chart-other.html">Cancelled</a></li>
                                    <li><a href="chart-other.html">All Orders</a></li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi zmdi-collection-item"></i><span> Reports </span> </a>
                                <ul class="submenu">
                                    <li><a href="page-starter.html">Between Dates</a></li>
                                    <li><a href="page-login.html">Order Count </a></li>
                                    <li><a href="page-register.html">Sales Report</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- End navigation menu  -->
                    </div>
                </div>
            </div>
        </header>