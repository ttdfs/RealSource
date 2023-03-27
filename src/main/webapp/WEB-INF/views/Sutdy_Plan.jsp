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
                        <a class="collapse-item active" href="Sutdy_Plan">학습계획</a>                        
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
            

                    <!-- Topbar Navbar -->
                   
                <!-- End of Topbar -->








  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->




<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->






  <div align="left">
    <form name="form"   method="post" action="Sutdy_Plan">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="white" bordercolordark="white" bordercolorlight="#CCCCCC" bgcolor="white" height="69" width="1127">
                <tr>
            <td class="tb_bottom" width="22" height="37">
                <p align="center"><img src="../images/bullet_01.gif" width="9" height="18" border="0"></p>
            </td>
            <td width="133" height="37" class="tb_bottom"><b><font size="2" color="#3B608D">학습계획현황</font></b></td>
                    <td width="100" height="37" class="tb_bottom">
                                &nbsp;
                     </td>
                    <td width="91" height="37" class="tb_bottom">
                                    &nbsp;
                    </td>
                    <td width="781" height="37" class="tb_bottom">&nbsp;</td>
                </tr>
                <tr>
                    <td width="1127" height="32" class="tb_bottom" colspan="5">
                        <table cellpadding="0" cellspacing="0" height="26" width="1109">
                            <tr>
                                <td width="32" height="26">&nbsp;</td>
                                <td width="85" height="26">
                                    사업부
                                </td>
                                <td width="80" height="26">
                                                                    
                                                               <select name="str_s_saubu_s" size="1">
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
                                <td width="63" height="26">
                                    &nbsp;&nbsp;&nbsp;&nbsp; 분류
                                </td>
                                <td width="100" height="26">
                                                                            &nbsp;
                                                                            
                                                               <select name="str_s_kind_s" size="1">
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;진행자
                                </td>
                                <td width="78" height="26">
                                                                                        &nbsp;<input type="text" name="leader_nm_s" size="7">
                                                        </td>
                                <td width="80" height="26">
                                    &nbsp;&nbsp;&nbsp;   제 목
                                </td>
                                <td width="173" height="26">&nbsp;
                                                          &nbsp;<input type="text" name="str_s_title_s" size="20">
                                </td>
                                <td width="64" height="26">
                                    <p align="center">                            	            </p>
                                </td>
                                <td width="78" height="26">&nbsp;&nbsp;</td>
                                <td width="62" height="26">&nbsp;</td>
                                <td width="182" height="26">&nbsp;<input type="submit" name="str_button" value="검 색">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
    
    </table>
    <table border="0" width="1127" height="84" cellspacing="0">
                <tr>
                    <td class="bdTop_section" width="55"   height="26">
                        <p align="center"><b><font color="#3B608D">NO</font></b></p>
                    </td>
                    <td width="92" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">조직키</font></b></p>
                    </td>
                    <td width="108" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">소속팀</font></b></p>
                    </td>
                    <td width="151" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">조직코드</font></b></p>
                    </td>
                    <td width="49" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">부서</font></b></p>
                    </td>
                    <td width="350" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">학습제목</font></b></p>
                    </td>
                    <td class="bdTop_section"  width="124" height="26">
                        <p align="center"><b><font color="#3B608D">학습조직명</font></b></p>
                    </td>
                    <td class="bdTop_section" width="115" height="26">
                        <p align="center"><b><font color="#3B608D">사용여부</font></b></p>
                    </td>
                    <td class="bdTop_section" width="65" height="26">
                        <p align="center"><b><font color="#3B608D">입력ID</font></b></p>
                    </td>
                </tr>
        <tr>
                            <td class="bdTop_line" width="55" height="1"></td>
                    <td width="92" height="1" class="bdTop_line"></td>
                    <td width="108" height="1" class="bdTop_line"></td>
                    <td width="151" height="1" class="bdTop_line"></td>
                    <td width="49" height="1" class="bdTop_line"></td>
                    <td width="350" height="1" class="bdTop_line"></td>
                    <td width="124" height="1" class="bdTop_line"></td>
                    <td width="115" height="1" class="bdTop_line"></td>
                    <td width="65" height="1" class="bdTop_line"></td>
        </tr>
        <tr>
                            <td class="bdTop_shadow" width="55" height="2"></td>
                    <td width="92" height="2" class="bdTop_shadow"></td>
                    <td width="108" height="2" class="bdTop_shadow"></td>
                    <td width="151" height="2" class="bdTop_shadow"></td>
                    <td width="49" height="2" class="bdTop_shadow"></td>
                    <td width="350" height="2" class="bdTop_shadow"></td>
                    <td width="124" height="2" class="bdTop_shadow"></td>
                    <td width="115" height="2" class="bdTop_shadow"></td>
                    <td width="65" height="2" class="bdTop_shadow"></td>
        </tr> 
       
          
        




         <%@ page import="java.sql.*" %>
         <%@ page import="java.util.ArrayList" %>
         <%@ page import="java.util.HashMap" %>
         <%@ page import="java.util.List" %>
         <%@ page import="java.util.Map" %>
         
         <%@ page import="java.text.SimpleDateFormat,java.util.Date"%>

         <%
         final int ROWSIZE = 14;  // 한페이지에 보일 게시물 수
         final int BLOCK = 5; // 아래에 보일 페이지 최대개수 1~5 / 6~10 / 11~15 식으로 5개로 고정
     
         int pg = 1; //기본 페이지값
         
         if(request.getParameter("pg")!=null) { //받아온 pg값이 있을때, 다른페이지일때
             pg = Integer.parseInt(request.getParameter("pg")); // pg값을 저장
         }
         
         int start = (pg*ROWSIZE) - (ROWSIZE-1); // 해당페이지에서 시작번호
         int end = (pg*ROWSIZE); // 해당페이지에서 끝번호
         
         int allPage = 0; // 전체 페이지수
         
         int startPage = ((pg-1)/BLOCK*BLOCK)+1; // 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6)
         int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10)
     
         int total = 0;
         
         System.out.println("request 객체에 담긴 사업부 이름: " + request.getParameter("str_s_saubu_s"));
         System.out.println("request 객체에 담긴 분류 이름: " + request.getParameter("str_s_kind_s"));
         System.out.println("request 객체에 담긴 진행자 이름: " + request.getParameter("leader_nm_s"));
         System.out.println("request 객체에 담긴 진행자 이름: " + request.getParameter("str_s_title_s"));
         System.out.println("기본 페이지값 pg: " + pg + "개");
         System.out.println("해당페이지에서 시작번호 start : " + start + "번호");
         System.out.println("해당페이지에서 끝 번호 end: " + end + "번호");
         System.out.println("1 총 게시물 : " + total + "개");
         System.out.println("2 총 게시물 : " + total + "개");
         System.out.println("3 총 게시물 : " + total + "개");
         System.out.println("4 총 게시물 : " + total + "개");


         %>


         <%
             Connection conn = null;
             Statement stmt = null;
             ResultSet rs = null;
        

             Connection conn2 = null;
      
         
             try {
                 // JDBC 드라이버 클래스 로드
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
         
                 // 데이터베이스 연결 정보 설정
                 String url = "jdbc:sqlserver://localhost:1433;databaseName=EHRD_TEMP;encrypt=true;trustServerCertificate=true";
                 String user = "sa";
                 String password = "1qazxsw2";
         
                 // 데이터베이스 연결 생성
                 conn = DriverManager.getConnection(url, user, password);
               
                 //////////총 게시물 수 구하기 //////////////////////////////////////////////////////////////////////////////////////////////////////
                 Statement stmt2 = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                 String sqlCount = "SELECT COUNT(*) FROM STR_ORG_MAST";
	             ResultSet rs2 = stmt2.executeQuery(sqlCount);
		
	            	if(rs2.next()){
		            	total = rs2.getInt(1);
	            	}
                   
                    allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
                    if(endPage > allPage) {
                        endPage = allPage;
                    }
                    
                    System.out.println("총 게시물 : " + total + "개");
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            

         // SQL 쿼리 실행
                
        //     String sql = "SELECT * FROM " +
        //     "(SELECT ROW_NUMBER() OVER(ORDER BY str_o_nm) AS rownum11, str_o_nm, str_o_saubu, str_o_kind, str_o_b_code, str_o_lder_code, str_o_lder_nm, insrt_dt, str_o_key " +
        //     "FROM STR_ORG_MAST) t " +
        //     "WHERE t.rownum11 BETWEEN 1 AND 15";

         //    String sql = "SELECT * FROM " +
         //    "(SELECT ROW_NUMBER() OVER(ORDER BY str_o_nm) AS rownum11, str_o_nm, str_o_saubu, str_o_kind, str_o_b_code, str_o_lder_code, str_o_lder_nm, insrt_dt, str_o_key " +
         //    "FROM STR_ORG_MAST) t " +
         //    "WHERE t.rownum11 BETWEEN ? AND ?"; 
            
             String sql = "SELECT * FROM " +
             "(SELECT ROW_NUMBER() OVER(ORDER BY str_o_nm) AS rownum11, str_o_key , str_o_saubu, str_o_b_code ,  str_o_nm,  str_o_lder_code,  str_o_use_flg, str_o_lder_nm,insrt_id " +
             "FROM STR_ORG_MAST) t " +
             "WHERE t.rownum11 BETWEEN ? AND ?"; 


             //stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
               
             PreparedStatement pstmt = conn.prepareStatement(sql);
             pstmt.setInt(1, start);
           pstmt.setInt(2, end);
         
              System.out.println("조회의 시작 Start 번호 : " + start + "번");
              System.out.println("조회의 시작 endPage 번호 : " + end + "번");


             //  pstmt.setInt(1, 1);
            //   pstmt.setInt(2, 15);
               rs = pstmt.executeQuery();


               


               //  rs = stmt.executeQuery(sql);
         
              
                if(total==0) {
           
                        out.println("<tr align='center' bgcolor='#FFFFFF' height='30'>");
                        out.println("<td colspan='6'>등록된 글이 없습니다.</td>");
                        out.println("</tr>");
           
                     } else { 


                        while(rs.next()) {
                            String idx = rs.getString(1);
                            String name = rs.getString(2);
                            String title = rs.getString(3);
                            String time = rs.getString(4);
                            String hit = rs.getString(5);
                            String indent = rs.getString(6);
                            String use_flg = rs.getString(7);
                            String lder_nm = rs.getString(8);
                            String insrt_dt = rs.getString(9);
                           

//NO, 조직키, 소속팀, 조직코드, 부서, 학습제목, 학습조직명, 사용여부, 입력ID
//NO, 소속팀 str_o_nm , 조직코드 str_o_saubu, 부서 str_o_b_code , 학습제목 str_o_nm, 학습조직명 str_o_lder_code, 사용여부 str_o_use_flg, 입력ID str_o_lder_nm


                            Date date = new Date();
                            SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
                            String year = (String)simpleDate.format(date);
                            String yea = time.substring(0,1);

                            int intx = 5;
                            
                     
                            %>
                            <tr height="25" align="center">
                                <td>&nbsp;<%=idx %></td>
                                <td><%=name %></td>
                                <td align="left">
                                <% 

                                for(int j=0;j<intx;j++){
                                    %>		&nbsp;&nbsp;&nbsp;<%
                                        } //for꺼
                                if(intx!=0){
                                    %>		<img src='img/reply_icon.gif' />
                                    <%
                                        } //if꺼 
                                    %>
                                        <a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=title %></a>
                                    <%
                                    %>
                                </td>
                                <td align="center"><%=time %></td>
                                <td align="center"><%=hit %></td>
                                <td align="center"><%=indent %></td>
                                <td align="center"><%=use_flg %></td>
                                <td align="center"><%=lder_nm %></td>
                                <td align="center"><%=insrt_dt %></td>
                                <td>&nbsp;</td>
                            </tr>
                              <tr height="1" bgcolor="#D2D2D2"><td colspan="9"></td></tr>
                            <% 

                        }  //while꺼 끝

                       }
                         
                   
                    
          
             } catch (Exception e) {
                 e.printStackTrace();
             } finally {
                 // 리소스 반환
                 rs.close(); 
               //  stmt.close(); 
                 conn.close(); 
             }
         %>
       


         <tr height="1" bgcolor="#82B5DF"><td colspan="9" width="752"></td></tr>
    </table>

    <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr><td colspan="4" height="5"></td></tr>
        <tr>
          <td align="center">
              <%
                  if(pg>BLOCK) {
              %>
                  [<a href="Sutdy_Plan?pg=1">◀◀</a>]
                  [<a href="Sutdy_Plan?pg=<%=startPage-1%>">◀</a>]
              <%
                  }
              %>
              
              <%
                  for(int i=startPage; i<= endPage; i++){
                      if(i==pg){
              %>
                          <u><b>[<%=i %>]</b></u>
              <%
                      }else{
              %>
                          [<a href="Sutdy_Plan?pg=<%=i %>"><%=i %></a>]
              <%
                      }
                  }
              %>
              
              <%
                  if(endPage<allPage){
              %>
                  [<a href="Sutdy_Plan?pg=<%=endPage+1%>">▶</a>]
                  [<a href="Sutdy_Plan?pg=<%=allPage%>">▶▶</a>]
              <%
                  }
              %>
              </td>
              </tr>
                <tr align="center">
         
        </tr>
       </table>
    </form>
    </div>







  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->


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