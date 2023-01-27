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
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">관리메뉴:</h6>
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
                <div id="collapseUtilities" class="collapse show" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item active" href="Request_Food">간편식 신청</a>
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
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->








  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->








  <div class="aspNetHidden">
    <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
    <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
    <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTk0OTUwODQxD2QWAmYPZBYKAgEPDxYCHgRUZXh0BRlDb25uZWN0ZWQgOiAxMC4yNDkuMjQuMTMyZGQCBw8WBB4ISW50ZXJ2YWwC6AceB0VuYWJsZWRnZAILDw8WAh8ABQ3rgqjsnYAg7IiY65+JZGQCDQ9kFgJmD2QWAgIBDxYCHgtfIUl0ZW1Db3VudAICFgRmD2QWDAIBDw8WAh4ISW1hZ2VVcmwFC2ltZy8wMDEucG5nZGQCAw8PFgIfAAUFNDUvNTBkZAIEDxUBAzAwMWQCBQ8PFgIfAAUM7KaJ7ISd7L2U64SIZGQCBg8VAQMwMDFkAgcPDxYCHwBlZGQCAQ9kFgwCAQ8PFgIfBAULaW1nLzAwMi5wbmdkZAIDDw8WAh8ABQQwLzUwZGQCBA8VAQMwMDJkAgUPDxYCHwAFD+qwhO2OuOyLney9lOuEiGRkAgYPFQEDMDAyZAIHDw8WAh8AZWRkAhMPFgIfAwICFgRmD2QWCgIBDw8WAh8EBQtpbWcvMDAxLnBuZ2RkAgIPFQEDMDAxZAIDDw8WAh8ABQzsponshJ3svZTrhIhkZAIEDxUBAzAwMWQCBQ8PFgIfAGVkZAIBD2QWCgIBDw8WAh8EBQtpbWcvMDAyLnBuZ2RkAgIPFQEDMDAyZAIDDw8WAh8ABQ/qsITtjrjsi53svZTrhIhkZAIEDxUBAzAwMmQCBQ8PFgIfAGVkZGRqSfP/wfxfRuTNWyM0nFDx8+LKkzIYxGAMfI5FU551pQ==" />
    </div>
    
    <script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['form1'];
    if (!theForm) {
        theForm = document.form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
    </script>
    
    
    <script src="/WebResource.axd?d=xdr-IoWgZut-g7j3H2fPEr99_dJ6dlD9R2JXopYwW4KIb1E6spp3dmH3mszW_39hrJULWJmYfG_GQi5cfA2T4S5MsgjO3kt6FOg7Ve7WoqM1&amp;t=637696606958594948" type="text/javascript"></script>
    
    
    <script src="/ScriptResource.axd?d=0f4djPaKktK7S7r5HbeIAJX2eFE0nprSPkh9YED4F82D-MtSq4XQpz1jy2m8H9A2h8xswihiq57NLv04f_hcvryqnWJDfhGBaf_AEA_aaGW1RA9sDGZT45ZXzQ74rUGui8mFx2TU4OYhq-oSLHfF0EPXwvDlinl8l48oVhUWvtvMlUJi_15Q2lCPjBnRa9-y0&amp;t=ffffffffe6d5a9ac" type="text/javascript"></script>
    <script type="text/javascript">
    //<![CDATA[
    if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax 클라이언트 쪽 프레임워크를 로드하지 못했습니다.');
    //]]>
    </script>
    
    <script src="/ScriptResource.axd?d=-Ts7hJl5A9C4hsARmnEv8hJt2gJvo90XypTba9zH4LQ-Btyeu8Dud1GlNBflXr-WFQqoAbfYlXIpVsdBfdKfxW2nI6JbGR_NF1mm5bgWBXyTpnzT3G6Kv-0Sa0iYTOwKcNzrKGJSjbQuK6EY9VGLsb_bcyLbmbsVq6vT8Gf8Pm2om28ZM8FcK98Y5jSF4Y3Z0&amp;t=ffffffffe6d5a9ac" type="text/javascript"></script>
    <script src="/ScriptResource.axd?d=J9_66vGjPhLkukWn9bufv2GMYfuUWtitdOfJu_ZoTN2GalVrwaZt5p89v68I082WzgqeZbIpaEkYEfun6DIsj4nBrIrpXnzJ5XJ1IS5nLgG8LIoovikuBnNY5njqbBSud7-ybNaKk4Yu2vhkLcsJ6p4TuoZWc7M_4ZLbwepaXVFRNgVS4ei973LR61L55IK10&amp;t=ffffffffe6d5a9ac" type="text/javascript"></script>
    <div class="aspNetHidden">
    
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="147489A5" />
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAZg4FgZbUqYLIL1S6LCba1slliAPKY+KvRmniYVjNuQiG1G0Qm+LLQpkyMzYKWon2NiEzRKmoaXqxD1ZDMcXvMuZ0GMYuWV8RTYGatvtfJi5ubbaobOintImIY7q6VqZK/bKZsxwaqvYX5apFJnfGpybo4di3qC3H7TvMTArDg+AQ==" />
    </div>
            <div>
                <div class="preloader">
                    <div class="loader">
                        <div class="loader__figure"></div>
                        <p class="loader__label">간편식</p>
                    </div>
                </div>
                <div id="main-wrapper">    
                    <div class="topbar">
                        <div class="header6">
                            <div class="container po-relative">             
                            </div>
                        </div>
                    </div>
                    <div class="page-wrapper">
                        <div class="container-fluid">
                            <div class="banner-innerpage" style="background-image:url(assets/images/innerpage/banner-bg4.jpg)">
                                <div class="container">
                                    <div class="row justify-content-center ">
                                        <div class="col-md-6 align-self-center text-center" data-aos="fade-down" data-aos-duration="1200">
                                            <h1 class="title">식사 예약 시스템</h1>
                                            <h3><span id="ipadd" style="color:White;">Connected : 10.249.24.132</span></h3>
                                            <h3 class="subtitle op-8">
                                                <script type="text/javascript">
    //<![CDATA[
    Sys.WebForms.PageRequestManager._initialize('scrpt', 'form1', ['tUpdatePanel1','UpdatePanel1','tUpdatePanel2','UpdatePanel2'], ['Timer1','Timer1','Timer2','Timer2'], [], 90, '');
    //]]>
    </script>
    
                                                 <!-------------------------- update -1 ------------------------------------------->
                                                <div id="UpdatePanel1">
        
                                                         &nbsp;<p><span id="Label1"></span></p>
                                                        &nbsp;<span id="Label2" style="font-size:XX-Large;"></span>
                                                    
    </div>
                                                <span id="Timer1" style="visibility:hidden;display:none;"></span> 
                                                 <!-------------------------- update -1 ------------------------------------------->
                                            </h3>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="alert alert-info m-b-0">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                                <h3 class="text-info"><i class="fa fa-exclamation-circle"></i> 진위 사업장 간편식 예약 안내</h3>
                                <div class="row"> 
                                    <div class="col-6">
                                        <div style="padding-left:30px;">
                                            <p># 이용 대상 : 진위 근무 임직원 (또는 당일 진위 방문 임직원)</p> 
                                            <p># 이용 장소 : 진위 9층 식당</p> 
                                            <p class="text-danger"># 예약 시간 :당일 오전 09시 ~ <u>10시 30분</u> (취소는 10시 30분까지)</p> 
                                            <p># 기타 사항 : 중식 간편식 이용 시, 구내 식당 중복 식사 불가</p> 
                                            <!--<p>&nbsp;&nbsp;&nbsp;&nbsp;식사 조별 배식 시간을 준수하여 주세요 (미리 줄서기 금지)</p>-->
                                        </div>
                                    </div>
                                    <div class="col-6" style="color:dodgerblue">
                                        <p>  # 예약 하신 분만 이용 가능 </p>
                                        <p>  # 잔여분은 현장에서만 확인 후 이용가능 </p>
                                    </div> 
                                </div>
                            </div>       
                            <div class="spacer">
                                <div class="container">
                                    <!-- Row -->
                                    <div class="row justify-content-center">                                    
                                        <div class="col-md-12 text-center">                                
                                            <h3 class="text-muted font-15 text-uppercase"><span id="lbmenu">남은 수량</span> </h3>
                                            <br />     
                                            <!-------------------------- update -2 ------------------------------------------->
                                            <div id="UpdatePanel2">
           
                                                    <table style="width:100%">
                                                       <tr>                                           
                                                              
                                                                    <td>
                                                                        <div class="">
                                                                            <div class="">
                                                                                <div class="display-5">
                                                                                    <img id="Repeater1_menu_img_0" src="img/001.png" style="width:250px;" />
                                                                                </div>
                                                                                <div class="">
                                                                                    <h2 class="font-light counter m-b-0">
                                                                                        <span id="Repeater1_label3_0">45/50</span>
                                                                                    </h2>
                                                                                    
                                                                                    <h5 class="font-15 text-uppercase text_001">
                                                                                        <span id="Repeater1_label1_0">즉석코너</span>
                                                                                    </h5>
                                                                                    <h5 class="font-15 text-uppercase text_001">
                                                                                        <span id="Repeater1_label4_0"></span>
                                                                                    </h5>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                                                    
                                                                    </td>
                                                                  
                                                                    <td>
                                                                        <div class="">
                                                                            <div class="">
                                                                                <div class="display-5">
                                                                                    <img id="Repeater1_menu_img_1" src="img/002.png" style="width:250px;" />
                                                                                </div>
                                                                                <div class="">
                                                                                    <h2 class="font-light counter m-b-0">
                                                                                        <span id="Repeater1_label3_1">0/50</span>
                                                                                    </h2>
                                                                                    
                                                                                    <h5 class="font-15 text-uppercase text_002">
                                                                                        <span id="Repeater1_label1_1">간편식코너</span>
                                                                                    </h5>
                                                                                    <h5 class="font-15 text-uppercase text_002">
                                                                                        <span id="Repeater1_label4_1"></span>
                                                                                    </h5>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                                                    
                                                                    </td>
                                                                                                                    
                                                        </tr>
                                                    </table>
                                                
    </div>
                                            <span id="Timer2" style="visibility:hidden;display:none;"></span>   
                                            <!-------------------------- update -2 ------------------------------------------->   
                                            <br />
                                            <div style="font-size:30px;padding:10px;">
                                                <span id="apply_menu"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <!-- Row -->
                                    <div class="row wrap-feature-24">
                                        <!-- Column -->
                                        
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="card card-shadow">
                                                        <a href="javascript:void(0)" class="service-24"> 
                                                            <img id="Repeater2_menu_img_0" src="img/001.png" style="width:250px;" />
                                                            <h6 class="ser-title text_001">
                                                                <span id="Repeater2_menu_nm_0">즉석코너</span>
                                                            </h6>
                                                            <h6 class="ser-title text_001">
                                                                <span id="Repeater2_Label5_0"></span>
                                                            </h6>
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="card card-shadow">
                                                        <a href="javascript:void(0)" class="service-24"> 
                                                            <img id="Repeater2_menu_img_1" src="img/002.png" style="width:250px;" />
                                                            <h6 class="ser-title text_002">
                                                                <span id="Repeater2_menu_nm_1">간편식코너</span>
                                                            </h6>
                                                            <h6 class="ser-title text_002">
                                                                <span id="Repeater2_Label5_1"></span>
                                                            </h6>
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                        <div class="col-md-12 m-t-20 text-center">   
                                            <a class="btn btn-outline-success btn-md btn-arrow" data-toggle="collapse" href="#" onclick="return btn_1();">
                                                <span>신 청 <i class="ti-arrow-right"></i></span>
                                            </a>&nbsp;&nbsp;
                                            <a class="btn btn-outline-success btn-md btn-arrow" data-toggle="collapse" href="#f24" onclick="return btn_2()">
                                                <span>취 소 <i class="ti-arrow-right"></i></span>
                                            </a> 
                                            <span id="test"></span>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      
            <a class="bt-top btn btn-circle btn-lg btn-info" href="#top">
                <i class="ti-arrow-up"></i>
            </a>
            <div class="footer4 spacer b-t">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 m-b-30">
                            <h5 class="m-b-20">Address</h5>
                            <p>75, Jinwisandan-ro, Jinwi-myeon, Pyeongtaek-si, Gyeonggi-do, Republic of Korea</p>
                        </div>
                        <div class="col-lg-3 col-md-6 m-b-30">
                            <h5 class="m-b-20">Phone</h5>
                            <p>TEL : +82-31-8047-7000
                                
                        </div>
                        <div class="col-lg-3 col-md-6 m-b-30">
                            <h5 class="m-b-20">Email</h5>
                            <p>Office : 총무팀@wonik.com
    
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h5 class="m-b-20">Intranet</h5>
                            <div class="round-social light">
                                <a href="https://gw.wonik.com" class="link" title="그룹웨어"><i class="fa fa-group"></i></a>
                           
                            </div>
                        </div>
                    </div>
                    <div class="f4-bottom-bar">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="d-flex font-14">
                                    <div class="m-t-10 m-b-10 copyright">All Rights Reserved by WONIKIPS.</div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            
<!---------------------------------->
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