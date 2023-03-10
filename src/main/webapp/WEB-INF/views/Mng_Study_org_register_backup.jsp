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
                  
                    </div>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">전체학습조직:</h6>
                        <a class="collapse-item" href="Sutdy_Full_plan">전체학습계획</a>                        
                        <a class="collapse-item" href="Sutdy_Full_Meterial">전체학습자료실</a>
                        <a class="collapse-item" href="Open_Sutdy_Full_Meterial">공개학습자료실</a>
                        <a class="collapse-item" href="Old_Sutdy_Full_Meterial">구_전체학습자료실</a>
                    </div>
                </div>
                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">관리메뉴:</h6>
                        <a class="collapse-item active" href="Mng_Study_org_register">학습조직등록</a>  
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

        








  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->





 <!-- ----------------------------------------------------------------------->
<form name="form" action="" method="post">
<input type="hidden" name="deptid" value="">
<table cellpadding="0" cellspacing="0" height="392" width="765">
    <tbody><tr>
                <td width="22" height="32">
                    <p align="center"><img src="../images/bullet_01.gif" width="9" height="18" border="0"></p>
                </td>
                <td width="743" height="32"><b><font size="2" color="#3B608D">학습조직 등록</font></b></td>
    </tr>
        <tr>
            <td width="765" height="328" align="left" valign="top" colspan="2">
                <table cellspacing="0" bordercolordark="white" bordercolorlight="#D4D2D2" width="751" height="319" bordercolor="white" cellpadding="0">
                    <tbody><tr>
                        <td width="94" height="39" class="tb_top" bgcolor="#F1F1F1">
                            <p align="center">학습조직명</p>
                        </td>
                        <td width="657" height="39" bgcolor="white" class="tb_top" colspan="7">
                            <p align="left">&nbsp;<input type="text" name="str_o_nm" size="101"></p>
                        </td>
                    </tr>
                    <tr>
                        <td width="94" height="37" class="tb_mid" bgcolor="#F1F1F1">
                            <p align="center">사업부</p>
                        </td>
                        <td width="161" height="37" bgcolor="white" class="tb_mid" colspan="2">
                            <p>&nbsp;<select name="saubu" size="1">
                                					<option value="">선택</option>
                                	        				
																			   		<option value="S0110">경영전략부문</option>
																			     				
																			   		<option value="S0115">구매부문</option>
																			     				
																			   		<option value="S0120">재무부문</option>
																			     				
																			   		<option value="S0125">인사부문</option>
																			     				
																			   		<option value="S0130">해외영업팀</option>
																			     				
																			   		<option value="S0135">환경안전팀</option>
																			     				
																			   		<option value="S0140">품질보증팀</option>
																			     				
																			   		<option value="S0145">반도체사업총괄</option>
																			     				
																			   		<option value="S0150">Diffusion 사업총괄</option>
																			     				
																			   		<option value="S0155">반도체연구소</option>
																			     				
																			   		<option value="S0160">Display사업총괄</option>
																			     				
																			   		<option value="S0165">SEC영업1본부</option>
																			     				
																			   		<option value="S0170">SEC영업2본부</option>
																			  
																		</select></p>
                        </td>
                        <td width="100" height="37" bgcolor="#F1F1F1" class="tb_mid">
                            <p align="center">부서</p>
                        </td>
                        <td width="132" height="37" bgcolor="white" class="tb_mid">
                        	     &nbsp;<input type="text" name="deptname" size="16" value=""></td>
                        <td width="36" height="37" bgcolor="white" class="tb_mid">
                            <p align="center">
                            	    <a href="javascript:na_open_window('buseo', '../org/org_b_tree.asp', 0, 0, 350, 370, 0, 0, 1, 1, 1)">
                            	    	 <img src="../img/S_Toolbar.gif" width="16" height="16" border="0">
                            	    </a>
                            </p>
                        </td>
                        <td width="101" height="37" bgcolor="#F1F1F1" class="tb_mid">
                            <p align="center">분류</p>
                        </td>
                        <td width="127" height="37" bgcolor="white" class="tb_mid">
                            <p>&nbsp;<select name="b_kind" size="1">
                                					<option value="">선택</option>
                                	        				
																			   		<option value="B0020">개발</option>
																			     				
																			   		<option value="B0030">구매</option>
																			     				
																			   		<option value="B0042">품질</option>
																			     				
																			   		<option value="B0044">C/S</option>
																			     				
																			   		<option value="B0055">사업기획</option>
																			     				
																			   		<option value="B0065">R&amp;D</option>
																			     				
																			   		<option value="B0070">영업</option>
																			     				
																			   		<option value="B0080">인사</option>
																			     				
																			   		<option value="B0090">재무</option>
																			     				
																			   		<option value="B0101">제조</option>
																			     				
																			   		<option value="B0105">준법</option>
																			     				
																			   		<option value="B0120">환경</option>
																			     				
																			   		<option value="B0130">정보</option>
																			     				
																			   		<option value="B0999">공개학습</option>
																			  
																		</select></p>
                        </td>
                    </tr>
                    <tr>
                        <td width="94" height="19" class="tb_mid" bgcolor="#F1F1F1">
                            <p align="center">학습조직리더</p>
                        </td>
                        <td width="126" height="38" bgcolor="white" class="tb_mid">
                        	<input type="hidden" name="leader_code">
                        	<input type="hidden" name="leader_id">
															&nbsp;<input type="text" name="leader_nm" size="15"></td>
                        <td width="35" height="38" bgcolor="white" class="tb_mid">
                            <p align="center">
                            	   <a href="javascript:na_open_window('buseo', '../popup/iv_m_user_search.asp', 0, 0, 350, 370, 0, 0, 1, 0, 1)">
                            	   	   <img src="../img/S_Toolbar.gif" width="16" height="16" border="0">
                            	   </a>
                            </p>
                        </td>
                        <td width="100" height="38" bgcolor="white" class="tb_mid">&nbsp;<input type="text" name="leader_posnm" size="10" readonly=""></td>
                        <td width="168" height="38" bgcolor="white" class="tb_mid" colspan="2">&nbsp;</td>
                        <td width="101" height="38" bgcolor="white" class="tb_mid">&nbsp;</td>
                        <td width="127" height="38" bgcolor="white" class="tb_mid">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="94" height="89" bgcolor="#F1F1F1" class="tb_mid">
                            <p align="center">구성원</p>
                        </td>
                        <td width="530" height="89" bgcolor="white" class="tb_mid" colspan="6">
                        	    &nbsp;<textarea name="st_member" rows="5" cols="72"></textarea>
                        </td>
                        <td width="127" height="89" bgcolor="white" class="tb_mid">&nbsp;
                        	   <a href="javascript:na_open_window('buseo', '../popup/iv_m_user_search2.asp', 0, 0, 350, 370, 0, 0, 1, 0, 1)">
                            	  <img src="../img/S_Toolbar.gif" width="16" height="16" border="0">
                            	</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="94" height="97" bgcolor="#F1F1F1" class="tb_mid">
                            <p align="center">설명</p>
                        </td>
                        <td width="657" height="97" bgcolor="white" class="tb_mid" colspan="7">
                        	   &nbsp;<textarea name="str_o_remark" rows="5" cols="102"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td width="94" height="19" bgcolor="white" class="tb_bottom">
                            <p align="center">&nbsp;
                            </p>
                        </td>
                        <td width="161" height="19" bgcolor="white" class="tb_bottom" colspan="2">
                            <p align="center">&nbsp;</p>
                        </td>
                        <td width="100" height="19" bgcolor="white" class="tb_bottom">&nbsp;</td>
                        <td width="168" height="19" bgcolor="white" class="tb_bottom" colspan="2">&nbsp;</td>
                        <td width="101" height="19" bgcolor="white" class="tb_bottom">&nbsp;</td>
                        <td width="127" height="19" bgcolor="white" class="tb_bottom">&nbsp;</td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
        <tr>
            <td width="765" height="32" align="left" valign="middle" colspan="2">
                <p align="center"><input type="button" name="formbutton3" value=" 저    장  " onclick="sendit();">  <input type="reset" name="formbutton3" value=" 취    소  "> </p>
            </td>
        </tr>
</tbody></table>
</form>
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