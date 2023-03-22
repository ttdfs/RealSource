<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>


<%

    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

long creationTime = session.getCreationTime();
String creationTimestr = dateFormat.format(new java.util.Date(creationTime));

long lastTime = session.getLastAccessedTime();
String lastTimeStr = dateFormat.format(new java.util.Date(lastTime));

    System.out.println("000");

    out.println("들어온 세션아이디 값"+session.getAttribute("emp_id"));
%>





<!DOCTYPE html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

   

</head>

<body class="bg-gradient-primary">


   <button id="btnA"> button A </button>
   <button id="btnB"> button B </button>

   <h2> Session 설정 확인 </h2>
   <ul>
      <li>세션 유지 시간 : <%=session.getMaxInactiveInterval()%></li>
      <li>세션 아이디 : <%=session.getId()%> </li>
      <li>최초 요청 시각 : <%=creationTimestr%></li>
      <li>마지막 요청 시각 : <%=lastTimeStr%></li>

   </ul>


    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="First Name">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repeat Password">
                                    </div>
                                </div>
                                <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    Register Account  aaa
                                </a>
                                <hr>
                                <a href="index" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Googlev 
                                </a>
                                <a href="index" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.html">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
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

    <script>
           
        $(document).ready(function(){
          
            
            
            $("#btnA").on("click",function() {
                  alert("11111 CCC 가나다라");
               
                 console.log("한글이 나옴");
                  alert("22222 CCC");
            });

            $("#btnB").on("click",function() {
               alert("BBBBBCCC ");
             //  alert(unescape(encodeURIComponent("한글")));
               console.log("CCC CCC");

            });
            
        });
        $("#btnB").trigger("click");
      
     </script>
   

</body>

</html>