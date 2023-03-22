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
                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">우리학습조직:</h6>
                        <a class="collapse-item" href="Sutdy_Plan">학습계획</a>                        
                        <a class="collapse-item active" href="Sutdy_Meterial">학습자료실</a>
                  
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









<div align="left">
<form name="form"   method="post" action="s_dat_s_list.asp">
<table border="0" cellpadding="0" cellspacing="0" bordercolor="white" bordercolordark="white" bordercolorlight="#CCCCCC" bgcolor="white" height="69" width="865">
            <tr>
        <td class="tb_bottom" width="22" height="37">
            <p align="center"><img src="../images/bullet_01.gif" width="9" height="18" border="0"></p>
        </td>
        <td width="133" height="37" class="tb_bottom"><b><font size="2" color="#3B608D">학습자료현황</font></b></td>
                <td width="100" height="37" class="tb_bottom">
                    		
<!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal -->


<button type="button" class="btn btn-primary btn-sm active" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">학습자료등록</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="form"   method="post" action="Sutdy_Meterial_update">
    
            
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">학습조직명:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">사업부:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">소속팀:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">분류:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">리더:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
  
<!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal --> <!-- Modal -->
                 </td>
                <td width="91" height="37" class="tb_bottom">
                				&nbsp;
                </td>
                <td width="519" height="37" class="tb_bottom">&nbsp;</td>
            </tr>
            <tr>
                <td width="865" height="32" class="tb_bottom" colspan="5">
                    <table cellpadding="0" cellspacing="0" height="26" width="847">
                        <tr>
                            <td width="32" height="26">&nbsp;</td>
                            <td width="73" height="26">
                                <p align="center">사업부</p>
                            </td>
                            <td width="86" height="26">
																	&nbsp;
														   <select name="str_d_saubu_s" size="1">
														   			<option value="">전체</option>
                       									     		
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
                       									
                        				</select> 			
														</td>
                            <td width="76" height="26">
                                <p align="center">분류</p>
                            </td>
                            <td width="66" height="26">
																		&nbsp;
														   <select name="str_d_kind_s" size="1">
														   					<option value="">전체</option>
                       									     		
                                									<option value="B0020">개발</option>
                       									     		
                                									<option value="B0030">구매</option>
                       									     		
                                									<option value="B0042">품질</option>
                       									     		
                                									<option value="B0044">C/S</option>
                       									     		
                                									<option value="B0055">사업기획</option>
                       									     		
                                									<option value="B0065">R&D</option>
                       									     		
                                									<option value="B0070">영업</option>
                       									     		
                                									<option value="B0080">인사</option>
                       									     		
                                									<option value="B0090">재무</option>
                       									     		
                                									<option value="B0101">제조</option>
                       									     		
                                									<option value="B0105">준법</option>
                       									     		
                                									<option value="B0120">환경</option>
                       									     		
                                									<option value="B0130">정보</option>
                       									     		
                                									<option value="B0999">공개학습</option>
                       									
                        				</select> 																		
														</td>
                            <td width="65" height="26">
                                <p align="center">진행자</p>
                            </td>
                            <td width="78" height="26">
																					&nbsp;<input type="text" name="leader_nm_s" size="7">
												    </td>
                            <td width="82" height="26">
                                <p align="center">제 목</p>
                            </td>
                            <td width="194" height="26">&nbsp;
                            	  					&nbsp;<input type="text" name="str_d_title_s" size="20">
                            </td>
                            <td width="58" height="26">
                            	            &nbsp;<input type="submit" name="str_button" value="검 색">
                            </td>
                            <td width="20" height="26">&nbsp;</td>
                            <td width="17" height="26">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>

</table>
<table border="0" width="866" height="84" cellspacing="0">
            <tr>
                <td class="bdTop_section" width="55"   height="26">
                    <p align="center"><b><font color="#3B608D">NO</font></b></p>
                </td>
                <td width="92" height="26" class="bdTop_section">
                    <p align="center"><b><font color="#3B608D">진행일</font></b></p>
                </td>
                <td width="69" height="26" class="bdTop_section">
                    <p align="center"><b><font color="#3B608D">분류</font></b></p>
                </td>
                <td width="344" height="26" class="bdTop_section">
                    <p align="center"><b><font color="#3B608D">학습제목</font></b></p>
                </td>
                <td class="bdTop_section"  width="147" height="26">
                    <p align="center"><b><font color="#3B608D">학습조직명</font></b></p>
                </td>
                <td class="bdTop_section" width="84" height="26">
                    <p align="center"><b><font color="#3B608D">소속팀</font></b></p>
                </td>
                <td class="bdTop_section" width="61" height="26">
                    <p align="center"><b><font color="#3B608D">진행자</font></b></p>
                </td>
            </tr>
    <tr>
        				<td class="bdTop_line" width="55" height="1"></td>
                <td width="92" height="1" class="bdTop_line"></td>
                <td width="69" height="1" class="bdTop_line"></td>
                <td width="344" height="1" class="bdTop_line"></td>
                <td width="147" height="1" class="bdTop_line"></td>
                <td width="84" height="1" class="bdTop_line"></td>
                <td width="61" height="1" class="bdTop_line"></td>
    </tr>
    <tr>
        				<td class="bdTop_shadow" width="55" height="2"></td>
                <td width="92" height="2" class="bdTop_shadow"></td>
                <td width="69" height="2" class="bdTop_shadow"></td>
                <td width="344" height="2" class="bdTop_shadow"></td>
                <td width="147" height="2" class="bdTop_shadow"></td>
                <td width="84" height="2" class="bdTop_shadow"></td>
                <td width="61" height="2" class="bdTop_shadow"></td>
    </tr> 
   
      
  

    <%@ page import="java.sql.*" %>
    <%

        System.out.println("Sutdy_Meterial_update 화면으로 들어옴 ----학습조직명--------"+ request.getParameter("recipient-name"));
        System.out.println("Sutdy_Meterial_update 화면으로 들어옴 -----사업부------"+ request.getParameter("message-text"));
        System.out.println("Sutdy_Meterial_update 화면으로 들어옴 -------소속팀-----"+ request.getParameter("message-text2"));
        System.out.println("Sutdy_Meterial_update 화면으로 들어옴 ------분류------"+ request.getParameter("message-text3"));
        System.out.println("Sutdy_Meterial_update 화면으로 들어옴 -------리더-----"+ request.getParameter("message-text4"));



        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
    
        try {
            // JDBC 드라이버 클래스 로드
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    
            // 데이터베이스 연결 정보 설정
            String url = "jdbc:sqlserver://localhost:1433;databaseName=EHRD_TEMP;encrypt=true;trustServerCertificate=true";
            String user = "sa";
            String password = "1qazxsw2";
    
            // 데이터베이스 연결 생성
            conn = DriverManager.getConnection(url, user, password);
    
            // SQL 쿼리 실행
            String sql = " select  str_o_nm,str_o_saubu,str_o_kind,str_o_b_code,str_o_lder_code,str_o_lder_nm,insrt_dt,str_o_key,str_o_key from STR_ORG_MAST";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
    
            // 결과 출력
     
            
                
              int i = 0;
            while (rs.next()) {
                       i =i + 1;
  
                      out.println("<tr>");
                          out.println("<td align='center'>" + i + "</td>");                                          
                         
                          out.println("<td align='center' width='52' height='1' class='bdTop_shadow'>" + rs.getString("str_o_nm") + "</td>");
                          out.println("<td align='center' width='317' height='1' class='bdTop_shadow'>" + rs.getString("str_o_saubu") + "</td>");
                          out.println("<td align='center' width='59' height='1' class='bdTop_shadow'>" + rs.getString("str_o_kind") + "</td>");
                          out.println("<td align='center' width='104' height='1' class='bdTop_shadow'>" + rs.getString("str_o_b_code") + "</td>");
                          out.println("<td align='center' width='53' height='1' class='bdTop_shadow'>" + rs.getString("str_o_lder_code") + "</td>");
                          out.println("<td align='center' width='59' height='1' class='bdTop_shadow'>" + rs.getString("str_o_lder_nm") + "</td>");
                        //  out.println("<td align='center' width='89' height='1' class='bdTop_shadow'>" + rs.getString("insrt_dt") + "</td>");
                      //    out.println("<td align='center' width='52' height='1' class='bdTop_shadow'>" + rs.getInt("str_o_key") + "</td>");
                          out.println("</tr>");
           
              //     out.println(rs.getString("minor_cd") + "/////////////////////// " + rs.getString("minor_nm"));
            }
  
       
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 리소스 반환
            try { rs.close(); } catch (Exception e) { }
            try { stmt.close(); } catch (Exception e) { }
            try { conn.close(); } catch (Exception e) { }
        }
    %>
  
</table>
</form>
</div>

 <!--------------------------------------------------------------------------------------------------------------


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