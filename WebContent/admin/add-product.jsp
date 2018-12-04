<%@page import="com.minhanh.Model.tour"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.minhanh.Model.tour_DAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="vi">
  <head>
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Them Tour</title>
    <!-- Icons-->
    <link href="node_modules/@coreui/icons/css/coreui-icons.min.css" rel="stylesheet">
    <link href="node_modules/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
    <link href="node_modules/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="node_modules/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="vendors/pace-progress/css/pace.min.css" rel="stylesheet">
    <!-- Global site tag (gtag.js) - Google Analytics-->
    <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/style2.css">
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./js/custom.js"></script>
    <script type="text/javascript" src="./js/nicEdit.js"></script>
   
    <script type="text/javascript">
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      // Shared ID
      gtag('config', 'UA-118965717-3');
      // Bootstrap ID
      gtag('config', 'UA-118965717-5');
    </script>
   
	<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
  </head>
  
  <body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
  <% tour_DAO Tour_DAO = new tour_DAO();
  		ArrayList<tour> listtour =Tour_DAO.getListTour();
  %>
  <%String error="";
  	if(request.getParameter("error")!=null){
  		error=(String) request.getParameter("error");
  	}
  %>
  
    <header class="app-header navbar">
      <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="indexadmin.jsp">
        <img class="navbar-brand-full" src="img/brand/logo1.png" width="89" height="25" alt="VQDN">
        <img class="navbar-brand-minimized" src="img/brand/logo1.png" width="30" height="30" alt="VQVN">
      </a>
      <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="nav navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
          <a class="nav-link" href="#">
            <i class="icon-list"></i>
          </a>
        </li>
        <li class="nav-item d-md-down-none">
          <a class="nav-link" href="#">
            <i class="icon-location-pin"></i>
          </a>
        </li>
        <li class="nav-item dropdown dropleft float-right">
          <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
              <img class="img-avatar" src="img/avatars/6.jpg" alt="admin@bootstrapmaster.com">
            
            </div>
          </a>
          
        </li>
      </ul>
      <button class="navbar-toggler aside-menu-toggler d-md-down-none" type="button" data-toggle="aside-menu-lg-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <button class="navbar-toggler aside-menu-toggler d-lg-none" type="button" data-toggle="aside-menu-show">
        <span class="navbar-toggler-icon"></span>
      </button>
    </header>
    <div class="app-body">
      <div class="sidebar">
        <nav class="sidebar-nav">
          <ul class="nav">
            <li class="nav-item">
              <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                <div class="row">
                  <div class="col-lg-4">
                    <img class="img-avatar" src="img/avatars/6.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="col-lg-8">
                    <span>Minh Anh</span> <br/>
                    <span class="fa fa-circle" style="color: #12ce12; font-size: 10px"></span> <span>online</span>
                  </div>
                </div>
              </a>
            </li>
            <input style="position: relative;" class="nav-title" placeholder="Tìm kiếm" type="text" name="">
            <button style="position: absolute; top: 82px; color: black; left: 150px;background-color: white;border: none;" class="fa fa-search"></button>
           
            <li class="nav-title">
              <a class="nav-link manager-category" data-set=".main-product-manager" href="productmanagement.jsp">
                <div>Quản lý Tour</div>
              </a>
            </li>
            
            <li class="nav-title">
              <a class="nav-link manager-category" data-set=".main-bill-manager" href="billmanagement.jsp">
                <div>Quản lý hóa đơn</div>
              </a>
            </li>
            
            <li class="nav-title">
              <a style="nav-link manager-category"  class="nav-link manager-category" data-set=".main-employee-manager" href="employeemanagement.jsp">
                <div>Quản lý nhân viên</div>
              </a>
            </li>
            
              <li class="nav-title">
              <a style="background-color: green"  class="nav-link manager-category" data-set=".main-employee-manager" href="employeemanagement.jsp">
                <div>Thêm Tour</div>
              </a>
            </li>
            
          </ul>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
      </div>
      
      <!-- Controller -->
      
      <form action="/websitedulich/Manager_tour_Controller" method="post">
      	
      	
       <main class="main">
      <div class="main-content main-product-manager">
            <h2 class="breadcrumb breadcrumb-item">Thêm Tour</h2>
          <div class="row">
          
            <div class="col-lg-4">
            <tr> <td><h6>Mã Tour</h6></td><td><p style="color: red"><h7><i>(*Không quá 5 ký tự)</i></h7></p></td></tr>
              <input type="text" class="form-control" name="ma" />      
            </div>
            
            <div class="col-lg-4">
              <h6>Tên Tour</h6><p style="color: red"><h7><i>(*Không quá 40 ký tự)</i></h7></p>
              <td><input type="text" class="form-control" name="themten" /><%=error %></td>
            </div>
            
            <div class="col-lg-4">
              <h6>Giá</h6><p style="color: red"><h7><i>(*Không quá 12 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="gia" />
            </div>
            
            <div class="col-lg-4">
              <h6>Điểm Đến Chính</h6><p style="color: red"><h7><i>(*Mã không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="denchinh" />         
            </div>
            
            <div class="col-lg-4">
              <h6>Điểm Đến Phụ</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="denphu" />
            </div>
            
            <div class="col-lg-4">
              <h6>Điểm Bắt Đầu</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="diembatdau" />
            </div> 
            
             <div class="col-lg-4">
              <h6>Thời Gian Bắt Đầu</h6><p style="color: red"><h7><i>(*Mã không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="thoigianbatdau" />
            </div>
            
            <div class="col-lg-4">
              <h6>Thời Gian Kết Thúc</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="thoigianketthuc" />
            </div>
            
            <div class="col-lg-4">
              <h6>Tổng Số Ngày</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="tongsongay" />
            </div>
             
            <div class="col-lg-4">
              <h6>Tổng Số Người</h6><p style="color: red"><h7><i>(*Mã không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="tongsonguoi" />          
            </div>
            
            <div class="col-lg-4">
              <h6>Phương Tiện</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="phuongtien" />
            </div>
            
            <div class="col-lg-4">
              <h6>Điểm Bắt Đầu</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="die" />
            </div>
              <div class="col-lg-4">
              <h6>Điểm Bắt Đầu</h6><p style="color: red"><h7><i>(*Mã Không quá 5 ký tự)</i></h7></p>
              <input type="text" class="form-control" name="de" />
            </div>
             
          </div>
          
          <div class="row">
          
              <div class="col-lg-4">
                <h6>Hình ảnh</h6>
                <input type="file" class="form-control" name="hinhanh">
              </div>
              
              <div class="col-lg-8">
                <td><h6>Mô tả</h6></td>
       <!--       <script type="text/javascript">
                  bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
                </script>
                <textarea rows="5" class="form-control"></textarea>  -->  
                <td>
             <!--    <textarea class="form-textarea" id="noiDung"></textarea>
                <script type="text/javascript" language="javascript">
   						CKEDITOR.replace('noiDung', {width: '700px',height: '300px'}); --> 
   						
				</script>
                </td>
              </div>
              
            </div>
            
          <div class="row btn-add-product">
            <div class="col-lg-12">
             <button class="btn" >Thoát</button>
             <input type="hidden" name="command" value="insert">
              <button class="btn btn-success">Thêm Tour</button>
              
         <!--       <button type="button" class="thoat"  >Thoát</button>
               <input type="hidden" name="command" value="insert">
              	<input type="submit" value="Thêm Tour">--> 
              
            </div>
          </div>
          
        </div>
        
        
      </main>
     </form>
 
 
  
      <aside class="aside-menu">
        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#timeline" role="tab">
              <i class="icon-list"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#messages" role="tab">
              <i class="icon-speech"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              <i class="icon-settings"></i>
            </a>
          </li>
      
               
            <div class="progress progress-xs">
              <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">243GB/256GB</small>
            <div class="text-uppercase mb-1 mt-2">
              <small>
                <b>SSD 2 Usage</b>
              </small>
            </div>
            <div class="progress progress-xs">
              <div class="progress-bar bg-success" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">25GB/256GB</small>
          </div>
        </div>
      </aside>
    </div>
    <footer class="app-footer">
      
      <div class="ml-auto">
        <span>Designed by</span>
        <a href="https://facebook.com/ngominhanh.97">Minhanh</a>
      </div>
    </footer>
 
  </body>
</html>