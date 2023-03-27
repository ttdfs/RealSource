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








  



  <div align="left">
    <form name="form"   method="post" action="s_sch_all_s_list.asp">
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
                                <td width="13" height="26">&nbsp;</td>
                                <td width="57" height="26">
                                     사업부 
                                </td>
                                <td width="96" height="26">
                                                                        
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
                                <td width="50" height="26">
                                    &nbsp;&nbsp;&nbsp;   팀명  
                                </td>
                                <td width="132" height="26">
                                                                            &nbsp;<input type="text" name="deptnm_s"  size="10">																
                                                            </td>
                                <td width="56" height="26">
                                     &nbsp;진행자 
                                </td>
                                <td width="85" height="26">
                                                                                        &nbsp;<input type="text" name="leader_nm_s" size="7">
                                                        </td>
                                <td width="61" height="26">
                                    &nbsp;제 목 
                                </td>
                                <td width="173" height="26">&nbsp;
                                                          &nbsp;<input type="text" name="str_s_title_s" size="20">
                                </td>
                                <td width="64" height="26">
                                    &nbsp;계획월 
                                </td>
                                <td width="78" height="26">&nbsp;<input type="text" name="yyyy_s" value="2023" size="5"></td>
                                <td width="63" height="26">
                                      <select name="mm_s">
                                            <option value="">선택</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                      </select>
                                </td>
                                <td width="181" height="26">&nbsp;<input type="submit" name="str_button" value="검 색">
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
                        <p align="center"><b><font color="#3B608D">계획일</font></b></p>
                    </td>
                    <td width="108" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">계획시간</font></b></p>
                    </td>
                    <td width="151" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">장소</font></b></p>
                    </td>
                    <td width="49" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">분류</font></b></p>
                    </td>
                    <td width="350" height="26" class="bdTop_section">
                        <p align="center"><b><font color="#3B608D">학습제목</font></b></p>
                    </td>
                    <td class="bdTop_section"  width="124" height="26">
                        <p align="center"><b><font color="#3B608D">학습조직명</font></b></p>
                    </td>
                    <td class="bdTop_section" width="115" height="26">
                        <p align="center"><b><font color="#3B608D">소속팀</font></b></p>
                    </td>
                    <td class="bdTop_section" width="65" height="26">
                        <p align="center"><b><font color="#3B608D">진행자</font></b></p>
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
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">297</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-11-25</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">09:00~10:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">개발</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16065">Application-S/H 유전체에 따른 공정 결과 review</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">SERP (Scientific Engineering for RF / Plsma)</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">플라즈마 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">오병욱</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">296</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-11-11</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">09:00~10:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">개발</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16064">Application-두께에 따른 clean time 선정</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">SERP (Scientific Engineering for RF / Plsma)</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">플라즈마 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">이민희</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">295</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-28</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">09:00~10:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">개발</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16063">Application-Cuarto Oxolume RF Sequence analysis</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">SERP (Scientific Engineering for RF / Plsma)</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">플라즈마 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">정남식</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">294</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-23</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">16:00~17:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;동탄사업장 4층</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">제조</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16087">SP.Ver O2 Analiyzer Offline 점검 Point</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">반도체 장비는 내손에</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">생산기술 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">김문식</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">293</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-21</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">14:00~15:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 중회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">구매</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16050">WMS 재고 속성변경 방법</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">구매지원</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">구매지원 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">이영진</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">292</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-16</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">16:00~17:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;동탄사업장 4층</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">제조</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16086">고객사별 Packing 특이사항</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">반도체 장비는 내손에</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">생산기술 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">신주홍</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">291</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-14</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">09:00~10:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">개발</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16062">Application-Cuarto VS CEX experiment review</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">SERP (Scientific Engineering for RF / Plsma)</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">플라즈마 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">신예진</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">290</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-10-07</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">14:00~15:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 중회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">구매</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16049">물류의 역사</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">구매지원</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">구매지원 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">조주형</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">289</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-09-25</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">16:00~17:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;동탄사업장 4층</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">제조</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16085">SCM 활용 법</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">반도체 장비는 내손에</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">생산기술 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">문종백</p>
            </td>
        </tr>
        
         
         <tr>
            <td class="tb_mid4" width="55" height="26">
                <p align="center">288</p>
            </td>
            <td width="92" height="26" class="tb_mid4">
                <p align="center">2020-09-23</p>
            </td>
                    <td width="108" height="26" class="tb_mid4">
                        <p align="center">14:00~15:00</p>
                    </td>
                    <td width="151" height="26" class="tb_mid4">
                        <p align="center">&nbsp;8층 중회의실</p>
                    </td>
            <td width="49" height="26" class="tb_mid4">
                <p align="center">구매</p>
            </td>
            <td width="350" height="26" class="tb_mid4">&nbsp;<a href="./s_sch_all_content.asp?str_s_key=16048">효율적인 공장운영을 위한 공장물류관리 핵심포인트</a></td>
            <td class="tb_mid4" width="124" height="26">
                <p align="center">구매지원</p>
            </td>
            <td class="tb_mid4" width="115" height="26">
                <p align="center">구매지원 G</p>
            </td>
            <td class="tb_mid4" width="65" height="26">
                <p align="center">박성현</p>
            </td>
        </tr>
        
       
          
        <tr>
             <td width="1125" height="28" class="tb_bottom" colspan="9">
                 <p align="center">&nbsp;
               
             
                        [<font color="blue">1</font>]
                     
                        [<a href="s_sch_all_list.asp?page=2">2</a>]
                     
                        [<a href="s_sch_all_list.asp?page=3">3</a>]
                     
                        [<a href="s_sch_all_list.asp?page=4">4</a>]
                     
                        [<a href="s_sch_all_list.asp?page=5">5</a>]
                     
                        [<a href="s_sch_all_list.asp?page=6">6</a>]
                     
                        [<a href="s_sch_all_list.asp?page=7">7</a>]
                     
                        [<a href="s_sch_all_list.asp?page=8">8</a>]
                     
                        [<a href="s_sch_all_list.asp?page=9">9</a>]
                     
                        [<a href="s_sch_all_list.asp?page=10">10</a>]
                     
                      <a href="s_sch_all_list.asp?page=11">다음</a>
                  
                                
                 </p>
             </td>
         </tr>
    </table>
    </form>
    </div>

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