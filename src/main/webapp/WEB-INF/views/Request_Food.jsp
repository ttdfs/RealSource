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
    
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <link href="assets/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <!-- <link href="assets/node_modules/aos/dist/aos.css" rel="stylesheet"> -->
    <link href="assets/node_modules/prism/prism.css" rel="stylesheet">
    <link href="assets/node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css" rel="stylesheet">
    <link href="css/features/features21-30.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com"> 
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&family=Jua&display=swap" rel="stylesheet">  
     <!-- <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script> -->
     <!-- <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script> -->



    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"> 
     <link href="css/style.css" rel="stylesheet">
     <!--  <link rel="stylesheet" type="text/css" href="css/food_style.css"> -->

     <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>

     <script>

           // var index = "";

         //  var emp_id_confirm = document.getElementById('emp_id_hidden').value;

           var index = 0;

           var select_box = 0; //즉석코너 1 , 간편식 2 , 아무것도 신청 안함 0

           var emp_id_confirm = 0;  //사번

            $(document).ready(function(){
                
               // alert("sdfsdf");
               //alert(${emp_id}.innerText);
               

               //alert(document.getElementById('emp_id_hidden').value);


               $("a.service-24").click(function(event) {
                // 이벤트의 기본 동작을 막습니다. (여기서는 링크로 이동하는 동작)

               // var emp_id_confirm = document.getElementById('emp_id_hidden').value;

               // alert("emp_id_confirm   2 번째 간편식 코너" + emp_id_confirm);
                
               event.preventDefault();
                // 클릭된 요소가 누구인지 확인합니다.
              

                var clickedElement = $(this);
                if (clickedElement.attr("href") === "javascript:check_food2()") {
                // 두 번째 카드 링크를 클릭한 경우 처리할 코드를 작성합니다.
                console.log("두 번째 카드 링크를 클릭했습니다.");
               
                select_box = 2;
                
                alert("2 번째 간편식 코너");

                } else {
                // 다른 요소를 클릭한 경우 처리할 코드를 작성합니다.
                
                select_box = 1;

                alert("1 번째 즉석 코너");

                console.log("다른 요소를 클릭했습니다.");
                }
            });
            });
          

            $(".service-24").click(function(){
                
                    console.log("111start"+index);

                    index = $(".service-24").index(this)+1;
                    
                    console.log("222start"+index);
                    
                });
            


            function   check_food2() {

                console.log("check_food2 들어옴 ::: "+index);

                index = index +1;

                console.log("222start ::: ::: ::: "+index);
            }

            function btn_1()   //신청 버튼 클릭했을 때
            {  
               
                var emp_id_confirm = document.getElementById('emp_id_hidden').value;
                 
                if(confirm("정말로 이 작업을 수행하시겠습니까?")) {
                    // 확인 버튼을 클릭한 경우 실행될 코드
                



                if (select_box == 1)  //왼쪽 즉석코너 신청 시
                {
                   // alert("http://localhost/Request_Food_confrim?emp_id=" + emp_id_confirm + "&select_box=" + select_box);

                    window.location.href = "http://localhost/Request_Food_confrim?emp_id=" + emp_id_confirm + "&select_box=" +"00"+ select_box;


                    // alert("메뉴를 선택해주세요");
                    return false;

                }
                else if (select_box == 2){  //오른쪽 간편식 코너 신청 시

                    alert("2------ 신청을 클릭했음");
                    var apply_menu = document.getElementById('apply_menu').innerText;     

                      alert("apply_menu"+apply_menu); 


                      window.location.href = "http://localhost/Request_Food_confrim?emp_id=" + emp_id_confirm + "&select_box=" +"00"+ select_box;

                      /*
                    if (apply_menu == "") { 

                        var result = confirm("간편식을 예약하시겠습니까??");

                        if (result == true) {

                            var myHidden = document.getElementById('HiddenField1');

                            alert("myHidden ===> "+myHidden); 

                            myHidden.value = index;
                         
                            // dopostBack은 save하는 것
                        //    __doPostBack('btnSave','')

                        }
                        */
                    }
                    else {    //아무것도 신청 안함

                        alert("아무것도 신청 안함 두개중 하나를 신청 해야 함");
                     
                        return false();

                    }
                
                } else {
                    return ; // 취소 버튼을 클릭한 경우 실행될 코드
                    }
            }

            function btn_2()   //취소 버튼 클릭했을 때
            {  
               
                var emp_id_confirm = document.getElementById('emp_id_hidden').value;
                 

                if (select_box == 1)  //왼쪽 즉석코너 신청 시
                {
                   // alert("http://localhost/Request_Food_confrim?emp_id=" + emp_id_confirm + "&select_box=" + select_box);

                    window.location.href = "http://localhost/Request_Food_cancle?emp_id=" + emp_id_confirm + "&select_box=" + select_box;


                    // alert("메뉴를 선택해주세요");
                    return false;

                }
                else if (select_box == 2){  //오른쪽 간편식 코너 신청 시

                    alert("2------ 신청을 클릭했음");
                    var apply_menu = document.getElementById('apply_menu').innerText;     

                      alert("apply_menu"+apply_menu); 


                      window.location.href = "http://localhost/Request_Food_cancle?emp_id=" + emp_id_confirm + "&select_box=" + select_box;

                      /*
                    if (apply_menu == "") { 

                        var result = confirm("간편식을 예약하시겠습니까??");

                        if (result == true) {

                            var myHidden = document.getElementById('HiddenField1');

                            alert("myHidden ===> "+myHidden); 

                            myHidden.value = index;
                         
                            // dopostBack은 save하는 것
                        //    __doPostBack('btnSave','')

                        }
                        */
                    }
                    else {    //아무것도 신청 안함

                        alert("아무것도 신청 안함 두개 중 하나를 신청 해야 함");
                     
                        return false();

                    }
                

            }

            /*

            function btn_2()  //취소 버튼 클릭시
            {
                var apply_menu = document.getElementById('apply_menu').innerText; 

                if (apply_menu == "")
                {

                    alert("예약한 내역이 없어 취소 할 수 없습니다.");

                    return false();

                }
                else
                {

                    var result = confirm("예약한 내역을 취소하시겠습니까?");

                    if (result == true) {

                         // dopostBack은 save하는 것
                      //  __doPostBack('btncancel','')

                    }

                }
            }

            */

            function showClock(){
              //  alert("result");
             // alert(document.getElementById("Food_001coutnt").value);
             // alert(document.getElementById("Food_002coutnt").value);
               
              var var_Food_001coutnt = document.getElementById("Food_001coutnt").value;
              var var_Food_002coutnt = document.getElementById("Food_002coutnt").value;

               if(var_Food_001coutnt+var_Food_002coutnt >= 1){
                 alert("이미 신청하셨으므로 취소만 가능합니다.");
              //   const target = document.getElementById("confrim")
              //   target.disabled = false;
               
              var btn = document.getElementById("confrim");
                btn.parentNode.removeChild(btn);
                return false;
            
            
            }

                 var connectedDate = new Date();

                 var Today_total_food_count = document.getElementById("Today_total_food_count");
                 var Today_total_001_food_count = document.getElementById("Today_total_001_food_count");
                 var Today_total_002_food_count = document.getElementById("Today_total_002_food_count");
                 var Food_001coutnt = document.getElementById("Food_001coutnt");
                 var Food_002coutnt = document.getElementById("Food_002coutnt");
                
                
              //   alert("time");
                 let today = new Date();   

                 let year = today.getFullYear(); // 년도
                 let month = today.getMonth() + 1;  // 월
                 let date = today.getDate();  // 날짜
                 let day = today.getDay();  // 요일
                
                 let hours = today.getHours(); // 시
                 let minutes = today.getMinutes();  // 분
                 let seconds = today.getSeconds();  // 초


                // var result = Math.ceil((currentDate - connectedDate)/1000);

               var time = year + '/' + month + '/' + date + '    현재시간     ' + hours + ':' + minutes + ':' + seconds ;
                

          //    alert(time);
                divClock.innerText = time ;
                 //setTimeout(showClock,1000);

               //  document.setElementById("result").value = "afasdfasdfad"
              
              /* 
                const currentTime = new Date();
                const startHour = 9; // 오전 9시
                const endHour = 10:30; // 오전 10시 30분
                const currentHour = currentTime.getHours();

                if (currentHour >= startHour && currentHour < endHour) {
               
                    var timecontents = document.getElementById("Label2");
                    hiddenElement.style.display = 'none';
                    console.log("안녕하세요");
                    }


*/
            }


     </script>


</head>

<body id="page-top" onload="showClock()">

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
<br> (로그인한 나의 아이디)) : --- ${emp_id}
<br> (취소 여부)) : --- ${cancel_checking}
<input type=hidden id="cancel_checking" name="abcName1" value=${cancel_checking}>

<br> (신청 여부)) : --- ${confirm_checking}
<input type=hidden id="confirm_checking" name="abcName1" value=${confirm_checking}>

<br> (취소/신청한 박스 종류)) : --- ${select_box}
<input type=hidden id="select_box" name="abcName1" value=${select_box}>

<br>
(오늘의) 전체 갯수)) : --- ${Today_total_food_count}
<input type=hidden id="Today_total_food_count" name="abcName1" value=${Today_total_food_count}>

<br>(오늘의) 즉석 코너 001)) : --- ${Today_total_001_food_count}
<input type=hidden id="Today_total_001_food_count" name="abcName1" value=${Today_total_001_food_count}>

<br>
(오늘의) 간편 코너 002)) : --- ${Today_total_002_food_count}
<input type=hidden id="Today_total_002_food_count" name="abcName1" value=${Today_total_002_food_count}>

<br>
[나의] 즉석 코너 001)) : --- ${Food_001coutnt}
<input type=hidden id="Food_001coutnt" name="abcName1" value=${Food_001coutnt}>
<br>
[나의] 간편식 코너 002)) : ----${Food_002coutnt}
<br>
<input type=hidden id="Food_002coutnt" name="abcName5" value=${Food_002coutnt}>





<table border="5">
    <tr>
        <th>menu_nm</th>
        <th>menu_cd</th>
        <th>times</th>
        <th>remain_cnts</th>
        <th>orgin_total_cnt</th>
    </tr> 



    <c:forEach var="mm" items="${Food_Today_remain_qty}">
        <tr align="Right"> 
            <td>${mm.MENU_NM}</td>
            <td>${mm.MENU_CD}</td>
            <td>${mm.times}</td>
            <td>${mm.REMAIN_CNTS}</td>
            <td>${mm.ORGIN_TOTAL_CNT}</td>
        </tr>
    </c:forEach>
</table>

            <div> 
                <div>
                    <div class="loader">
                        <div class=""></div>
                        <p class="loader__label"></p>
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
                            <div class="banner-innerpage" style="background-image:url(assets/images/innerpage/banner-bg8.jpg)">
                                <div class="container">
                                    <div class="row justify-content-center ">
                                        <div class="col-md-6 align-self-center text-center" data-aos="fade-down" data-aos-duration="1200">
                                            <h1 class="title">식사 예약 시스템</h1>
                                            <h3><span id="ipadd" style="color:White;"></span></h3>
                                            <h3 class="subtitle op-8">
                                                <-- 추후 여기에 권한 넣어야 함.-->

                                                 <div id = "divClock333" class="title"></div>
                                                
                                                 <a target='_blank' style='color:white'><mark>예약현황</mark></a>
    
                                                 <!-------------------------- update -1 ------------------------------------------->
                                                <div id="UpdatePanel1">
        
                                                         &nbsp;<p><span id="Label1"></span></p>
                                                        &nbsp;<span id="Label2" style="font-size:XX-Large;"> 
                                                             지금은 신청 가능한 시간이 아닙니다.</span>
                                                             <input type=hidden id="emp_id_hidden" name="abcName" value=${emp_id}>
                                                             
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
                                                                                    <img id="Repeater1_menu_img_0" src="img/snack.jpg" style="width:250px;" />
                                                                                </div>
                                                                                <div class="">
                                                                                    <h2 class="font-light counter m-b-0">
                                                                                        <span id="Repeater1_label3_0">${Today_total_001_food_count}/50</span>
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
                                                                                    <img id="Repeater1_menu_img_1" src="img/fastfood.jpg" style="width:250px;" />
                                                                                </div>
                                                                                <div class="">
                                                                                    <h2 class="font-light counter m-b-0">
                                                                                        <span id="Repeater1_label3_1">${Today_total_002_food_count}/50</span>
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
                                                        <a href="javascript:check_food2()" class="service-24"> 
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
                                            <a id="confrim" class="btn btn-outline-success btn-md btn-arrow" data-toggle="collapse" href="#" onclick="return btn_1();">
                                                <span>신 청 <i class="ti-arrow-right"></i></span>
                                            </a>&nbsp;&nbsp;
                                            <a class="btn btn-outline-success btn-md btn-arrow" data-toggle="collapse" href="#" onclick="return btn_2()">
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
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
  <!--  <script src="js/demo/chart-area-demo.js"></script> -->
  <!--  <script src="js/demo/chart-pie-demo.js"></script> -->

</body>

</html>