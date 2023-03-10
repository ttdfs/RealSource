<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>경영지원 Portal 시스템</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">경영지원PORTAL</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="Rnd_Cost">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>RnD 예산</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                학습조직 시스템
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>학습조직</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">우리학습조직:</h6>
                        <a class="collapse-item" href="Sutdy_Plan">학습계획</a>                        
                        <a class="collapse-item" href="Sutdy_Meterial">학습자료실</a>
                        <a class="collapse-item" href="Sutdy_cards">Cards</a>
                    </div>
                </div>
                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">전체학습조직:</h6>
                        <a class="collapse-item active" href="Sutdy_Full_plan">전체학습계획</a>                        
                        <a class="collapse-item" href="Sutdy_Full_Meterial">전체학습자료실</a>
                        <a class="collapse-item" href="Open_Sutdy_Full_Meterial">공개학습자료실</a>
                        <a class="collapse-item" href="Old_Sutdy_Full_Meterial">구_전체학습자료실</a>
                    </div>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">관리메뉴:</h6>
                        <a class="collapse-item" href="Mng_Study_org_register">학습조직등록</a>  
                        <a class="collapse-item" href="Mng_Study_org">학습조직관리</a>                        
                        <a class="collapse-item" href="Mng_Study_Meterial">학습자료열람관리</a>
                        <a class="collapse-item" href="Request_Study_quest">개인열람요청현황</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>간편식</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="Request_Food">간편식 신청</a>
                        <a class="collapse-item" href="utilities-border.html">Borders</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login">Login</a>
                        <a class="collapse-item" href="register">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

         
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
               
                <!-- End of Topbar -->








  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->








  



  <table border="0" cellpadding="0" cellspacing="1" align="center" height="137">
    <tr>
        <td>
            <p align="center">
            	  <a href="s_sch_calender.asp?wdate=2022-12-01"><img src="img/diary_1.jpg" alt="이전달" width="8" height="7" border=0></a>
                 <font color="592492" size="2"><strong>
				         <a href="s_sch_calender.asp?wdate=2023-01-27">2023년 1월</a></strong></font>
				           <a href="s_sch_calender.asp?wdate=2023-02-01"><img src="img/diary_2.jpg" alt="다음달" width="8" height="7" border=0></a>
				           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./s_sch_all_list.asp">[목록형]</a>
            </p>
        </td>
    </tr>
    <tr>
     <td align="center" valign="top" height="114">
		<table  border="0" align="center" cellpadding="0" cellspacing="1" height="112">
			 <tr>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="100"><font color="red"><div align='center'>일</font></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="93"><div align='center'>월</div></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="96"><div align='center'>화</div></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="70"><div align='center'>수</div></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="15"><div align='center'>목</div></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="15"><div align='center'>금</div></td>
		  			<td style="border-bottom-width:1; border-bottom-color:rgb(204,204,204); border-bottom-style:solid;" width="16"><font color="blue"><div align='center'>토</div></font></td>
		  	  </tr>

      <tr> 

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						 <font color='red'>
						  <div align='left' valign='top'>
						  	 1</div>
							 <div align='left'>							 
							 
 										
							</div>
				     </font>
				   </td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>2</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>3</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>4</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>5</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>6</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='008EC6'>
							<div align='left'>7</div>
						  <div align='left'>
							 
									
							</div>
							</font>
							</td>

                                      </tr>

      <tr> 

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='red'>
						<div align='left'>8</div>
						<div align='left'>
							 
									
							</div>
						</font>
					</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>9</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>10</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>11</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>12</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>13</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='008EC6'>
							<div align='left'>14</div>
						  <div align='left'>
							 
									
							</div>
							</font>
							</td>

                                      </tr>

      <tr> 

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='red'>
						<div align='left'>15</div>
						<div align='left'>
							 
									
							</div>
						</font>
					</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>16</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>17</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>18</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>19</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>20</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						 <font color='red'>
						  <div align='left' valign='top'>
						  	 21</div>
							 <div align='left'>							 
							 
 										
							</div>
				     </font>
				   </td>

                                      </tr>

      <tr> 

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						 <font color='red'>
						  <div align='left' valign='top'>
						  	 22</div>
							 <div align='left'>							 
							 
 										
							</div>
				     </font>
				   </td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						 <font color='red'>
						  <div align='left' valign='top'>
						  	 23</div>
							 <div align='left'>							 
							 
 										
							</div>
				     </font>
				   </td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>24</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>25</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>26</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>27</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='008EC6'>
							<div align='left'>28</div>
						  <div align='left'>
							 
									
							</div>
							</font>
							</td>

                                      </tr>

      <tr> 

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<font color='red'>
						<div align='left'>29</div>
						<div align='left'>
							 
									
							</div>
						</font>
					</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>30</div>
						<div align='left'>

							 
							</div>
						</td>

					<td width="100" bgcolor='ECEBEF' height="88" style='cursor:hand' valign='top'>
						<div align='left'>31</div>
						<div align='left'>

							 
							</div>
						</td>
<td width='50' height='35'>&nbsp;</td><td width='50' height='35'>&nbsp;</td><td width='50' height='35'>&nbsp;</td><td width='50' height='35'>&nbsp;</td>
                                      </tr>


			</table>
		</td>
    </tr>
</table>

  <!--   ---------------------------------------------------------------------------------- 


            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>