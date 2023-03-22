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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style type="text/css">
                    form {
                width: 500px;
                }
                table {
                border-collapse:collapse;
                margin-bottom: 10px;
                }
                th, td {
                padding: 3px 10px;
                }
                .off-screen {
                display: none;
                }
                #nav {
                width: 500px;
                text-align: center;
                }
                #nav a {
                display: inline-block;
                padding: 3px 5px;
                margin-right: 10px;
                font-family:Tahoma;
                background: #ccc;
                color: #000;
                text-decoration: none;
                }
                #nav a.active {
                background: #333;
                color: #fff;
                }
        </style>

    
    
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

<button id="submit-btn">Submit Form</button>


  <div align="left">
   
        <table id="products" border="1">
            <caption>product list
              <form action="" id="setRows">
                <p>
                  showing
                  <input type="text" name="rowPerPage" value="5">
                  item per page
                </p>
              </form>
          
            </caption>
          
            <thead>
              <tr>
                <th>No</th>
                <th>Category</th>
                <th>Product</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Clothing</td>
                <td>Jacket</td>
              </tr>
              <tr>
                <td>2</td>
                <td>life</td>
                <td>dish</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Clothing</td>
                <td>shocks</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Clothing</td>
                <td>sports</td>
              </tr>
              <tr>
                <td>5</td>
                <td>shoes</td>
                <td>nike</td>
              </tr>
              <tr>
                <td>6</td>
                <td>shoes</td>
                <td>addidas</td>
              </tr>
              <tr>
                <td>7</td>
                <td>Bags</td>
                <td>backpack</td>
              </tr>
              <tr>
                <td>8</td>
                <td>Clothing</td>
                <td>Jacket</td>
              </tr>
              <tr>
                <td>9</td>
                <td>shoes</td>
                <td>bonie</td>
              </tr>
              <tr>
                <td>10</td>
                <td>Clothing</td>
                <td>Jacket</td>
              </tr>
            </tbody>
          
          </table>
    
    </div>







  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

  <script type="text/javascript">

//function myFunction() {
  //    var $setRows = $("#myForm");
  $(document).ready(function(){    
       alert("Helssslo, world!");
           //  $('#setRows').submit();
  
     // $("#setRows").trigger("submit");
    });
        // var $setRows = $('#setRows');
      

  // $setRows.submit(function(e) {
    $('#setRows').submit(function(e) {
        alert("Hello, world!"+typeof e);
        console.log("Hello, world!");


         // e.preventDefault();
      var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환
    
        //    console.log(typeof rowPerPage);
    
      var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
      if (!rowPerPage) {
        alert(zeroWarning);
        return;
      }
      $('#nav').remove();
      var $products = $('#products');
    
      $products.after('<div id="nav">');
    
    
      var $tr = $($products).find('tbody tr');
      var rowTotals = $tr.length;
        //  console.log(rowTotals);
    
      var pageTotal = Math.ceil(rowTotals/ rowPerPage);
      var i = 0;
    
      for (; i < pageTotal; i++) {
        $('<a href="#"></a>')
            .attr('rel', i)
            .html(i + 1)
            .appendTo('#nav');
      }
    
      $tr.addClass('off-screen')
          .slice(0, rowPerPage)
          .removeClass('off-screen');
    
      var $pagingLink = $('#nav a');
      $pagingLink.on('click', function (evt) {
        evt.preventDefault();
        var $this = $(this);
        if ($this.hasClass('active')) {
          return;
        }
        $pagingLink.removeClass('active');
        $this.addClass('active');
    
        // 0 => 0(0*4), 4(0*4+4)
        // 1 => 4(1*4), 8(1*4+4)
        // 2 => 8(2*4), 12(2*4+4)
        // 시작 행 = 페이지 번호 * 페이지당 행수
        // 끝 행 = 시작 행 + 페이지당 행수
    
        var currPage = $this.attr('rel');
        var startItem = currPage * rowPerPage;
        var endItem = startItem + rowPerPage;
    
        $tr.css('opacity', '0.0')
            .addClass('off-screen')
            .slice(startItem, endItem)
            .removeClass('off-screen')
            .animate({opacity: 1}, 300);
    
      });
    
      $pagingLink.filter(':first').addClass('active');
    
    });
  
 // });
  //  alert("dddd");
  
   // setTimeout(function() {
 // setRows.submit();
//  }, 1000); // 1초 후에 실행

   // const submitBtn = document.getElementById("submit-btn");

   // submitBtn.addEventListener("click", function() {
  //      console.log("sdfdsf");
    //    alert("sdfsdf");
   // setRows.submit();
 //   });

  //  $setRows.submit(); 
  


</script>

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