<%@page import="com.minhanh.Model.tour_DAO"%>
<%@page import="com.minhanh.Model.tour"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--
* CoreUI - Free Bootstrap Admin Template
* @version v2.0.0
* @link https://coreui.io
* Copyright (c) 2018 creativeLabs Łukasz Holeczek
* Licensed under MIT (https://coreui.io/license)
-->

<html lang="vi">
  <head>
    <base href="./">
    <meta charset="utf-8">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Quản Trị Hệ Thống</title>
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
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./js/custom.js"></script>
    
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
  </head>
  <body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
  <%
  	tour_DAO Tour_DAO = new tour_DAO(); 
  %>
    <header class="app-header navbar">
      <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">
        <img class="navbar-brand-full" src="img/shop/logo.png" width="89" height="25" alt="CoreUI Logo">
        <img class="navbar-brand-minimized" src="img/brand/sygnet.svg" width="30" height="30" alt="CoreUI Logo">
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
              <img class="img-avatar" src="img/avatars/8.jpg" alt="admin@bootstrapmaster.com">
              <div class="dropdown-menu">
                <a class="dropdown-item" href="login.html">Cập nhật thông tin</a>
                <a class="dropdown-item" href="login.html">Đổi mật khẩu</a>
                <a class="dropdown-item" href="login.html">Đăng xuất</a>
              </div>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
            <div class="dropdown-header text-center">
              <strong>Account</strong>
            </div>
            <a class="dropdown-item" href="#">
              <i class="fa fa-bell-o"></i> Updates
              <span class="badge badge-info">42</span>
            </a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-envelope-o"></i> Messages
              <span class="badge badge-success">42</span>
            </a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-tasks"></i> Tasks
              <span class="badge badge-danger">42</span>
            </a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-comments"></i> Comments
              <span class="badge badge-warning">42</span>
            </a>
            <div class="dropdown-header text-center">
              <strong>Settings</strong>
            </div>
            <a class="dropdown-item" href="#">
              <i class="fa fa-user"></i> Profile</a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-wrench"></i> Settings</a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-usd"></i> Payments
              <span class="badge badge-secondary">42</span>
            </a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-file"></i> Projects
              <span class="badge badge-primary">42</span>
            </a>
            <div class="divider"></div>
            <a class="dropdown-item" href="#">
              <i class="fa fa-shield"></i> Lock Account</a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-lock"></i> Logout</a>
          </div>
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
                    <img src="img/avatars/8.jpg" alt="" width="50" height="51" class="">
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
              <a class="nav-link manager-category" data-set=".main-product-manager" href="index.html">
                <div>Quản lý Tour</div>
              </a>
            </li>
            <li class="nav-title">
              <a class="nav-link manager-category" data-set=".main-category-manager" href="productmanagement.html">
                <div>Quản lý danh mục</div>
              </a>
            </li>
            <li class="nav-title">
              <a class="nav-link manager-category" data-set=".main-bill-manager" href="billmanagement.html">
                <div>Quản lý hóa đơn</div>
              </a>
            </li>
            <li class="nav-title">
              <a class="nav-link manager-category" data-set=".main-employee-manager" href="employeemanagement.html">
                <div>Quản lý nhân viên</div>
              </a>
            </li>
          </ul>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
      </div>
      <main class="main">
        <!-- Breadcrumb-->
          <div class="main-content main-product-manager">
            <h2 class="breadcrumb breadcrumb-item">Quản lý Tour</h2>
          <div class="container-fluid">
          	<div class="title-product-admin">
	          	<div>
	          		<h5>Chọn tên danh mục</h5>
		          	<select class="form-control" style="width: 500px; margin-bottom: 20px;">
		          		<option>Tour Miền Bắc</option>
		          		<option>Tour Miền Trung</option>
		          		<option>Ttour Miền Nam</option>
		          		<option>Tất Cả Các Tour</option>
		          	</select>
	          	</div>
          		<div style="position: relative;
          		">
          			<input placeholder="Tìm kiếm sản phẩm" class="form-control" type="text" name="">
          			<span style="position: absolute; top: 49px; left:274px;" class="fa fa-search"></span>
          		</div>
          	</div>
            <div class="row">
              <div class="col-lg-12">
                <table class="table">
                  <thead>
                    <tr class="thead">
                      <th><input id="chk-checkAll" type="checkbox" name=""></th>
                      <th>STT</th>
                      <th>Tên Tour</th>
                      <th>Giá Tiền</th>
                      <th>Số Ngày</th>
                      <th>Số Người</th>
                      <th>Phương Tiện</th>                  
                      <th>SỬA</th>
                      <th>XÓA</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <%               
          			for(tour t : Tour_DAO.getListTour()) {	
          			%>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td><%=t.getTour_id() %></td>
                      <td><%=t.getTour_name()%></td>
                      <td><%=t.getTour_price() %></td>
                      <td><%=t.getTour_number_date() %></td>
                      <td><%=t.getTour_number_customer() %></td>
                      <td><%=t.getTour_transport() %></td>                   
                 	  <td><a href="update-tour.jsp?command=update&tour_id=<%=t.getTour_id()%>" target="_blank"><span class="fa fa-edit"></span></a></td>
                 	  <td><a href=/websitedulich/Manager_tour_Controller?command=update&tour_code=<%=t.getTour_code()%>"></a><span class="fa fa-times-circle"></span></td>
                    </tr>
                    
                    
                
                    <%
                    }
                  	%>
                  </tbody>
                  
                </table>
                <div class="btn-delete-product">
            		<button type="submit" class="btn btn-danger">Xóa Các Tour Chọn</button>
            		<a href="add-product.jsp" target="_blank"><button class="btn btn-success">Thêm Các Tour Chọn</button></a>
                </div>
                
                <nav class="paging" aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>
              </div>
            </div>          
          </div>
        </div>

        <div class="main-content main-category-manager">
            <h2 class="breadcrumb breadcrumb-item">Quản lý danh mục</h2>
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-5">
                <h6>Tên danh mục</h6>
                <input class="form-control" placeholder="Tên danh mục" type="text" name=""> <br/>
                <button class="btn btn-success">Thêm</button>
              </div>
              <div class="col-lg-7">
                <table class="table">
                  <thead>
                    <tr>
                      <th>Tên Khu Vực</th>
                      <th><button class="btn btn-danger">Xóa</button></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Miền Bắc</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td>Miền Nam</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td>Miền Trung</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td>Miền  Bắc</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>          
          </div>
        </div>

        <div class="main-content main-bill-manager">
            <h2 class="breadcrumb breadcrumb-item">Quản lý hóa đơn</h2>
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-5">
                <h6>Tên khách hàng</h6>
                <input type="text" class="form-control" placeholder="Tên khách hàng" name="">
                <br/><h6>Số điện thoại</h6>
                <input class="form-control" type="text" size="60" placeholder="Số điện thoại" name=""> <br/>
                <h6>Địa chỉ</h6>
                <input class="form-control" type="text" size="60" placeholder="Địa chỉ giao hàng" name=""> <br/>
                <h6>Ngày lập</h6>
                <input class="form-control" type="datetime-local" name="bdaytime"> <br/>
                <h6>Hình thức thanh toán</h6>
                <select class="form-control">
                  <option>Thanh toán trực tiếp</option>
                  <option>Thanh toán qua mạng</option>
                </select> 
                <br/><h6>Ghi chú</h6>
                <textarea placeholder="Ghi chú" class="form-control" cols="63" rows="7">
                </textarea>
                <br/>
                <h6>Danh sách Tour</h6>
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">STT</th>
                      <th scope="col">Tên Tour</th>
                      <th scope="col">Gói</th>
                      <th scope="col">Đơn giá</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Hạ Long</td>
                      <td>Nhóm</td>
                      <td>1000.000 VNĐ</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Quảng Ninh</td>
                      <td>Nhóm</td>
                      <td>1000.000 VNĐ</td>
                    </tr>
                    <tr>
                      <td></td>
                      <td></td>
                      <td colspan="2">Tổng tiền: 2000.000 VNĐ</td>
                    </tr>
                  </tbody>
                </table>
                <button class="btn btn-success">Thêm</button>
              </div>
              <div class="col-lg-7">
                <table class="table">
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="chk-checkAll"></th>
                      <th>TÊN KHÁCH HÀNG</th>
                      <th>SỐ ĐIỆN THOẠI</th>
                      <th>ĐỊA CHỈ</th>
                      <th><button class="btn btn-danger btn-Xoa">Xóa</button></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Ngô Văn A</td>
                      <td>09042536646</td>
                      <td> Hà Nội</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Nguyễn Văn C</td>
                      <td>036686886</td>
                      <td> Hà Nội</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Lên Hoàng B</td>
                      <td>0370800088</td>
                      <td> Hà Nội</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>trần văn D</td>
                      <td>03777799</td>
                      <td> Hà Nội</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>          
          </div>
        </div>

        <div class="main-content main-employee-manager">
            <h2 class="breadcrumb breadcrumb-item">Quản lý nhân viên</h2>
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-5">
                <h6>Tên nhân viên</h6>
                <input class="form-control" type="text" size="60" placeholder="Tên nhân viên" name="">
                <br/><h6>Địa chỉ</h6>
                <input class="form-control" type="text" size="60" placeholder="Địa chỉ" name=""> <br/>
                <h6>Số điện thoại</h6>
                <input class="form-control" type="text" size="60" placeholder="Số điện thoại" name=""> <br/>
                <h6>CMND</h6>
                <input class="form-control" type="text" size="60" placeholder="Chứng minh nhân dân" name=""> <br/>
                <h6>Giới tính</h6>
                <input type="radio" name="rdo-gioiTinh"> <label> Nam </label>
                <input type="radio" name="rdo-gioiTinh"> <label>  Nữ </label> <br/>
                <h6>Email</h6>
                <input class="form-control" type="text" size="60" placeholder="Email" name=""> <br/>
                <h6>Mật khẩu</h6>
                <input class="form-control" type="text" size="60" placeholder="Mật khẩu" name=""> <br/>
                <h6>Chức vụ</h6>
                <select class="form-control">
                  <option>Quản lý</option>
                  <option>Nhân viên</option>
                </select><br/>         
                <button class="btn btn-success">Thêm</button>
              </div>
              <div class="col-lg-7">
                <table class="table">
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="chk-checkAll"></th>
                      <th>MÃ NHÂN VIÊN</th>
                      <th>TÊN NHÂN VIÊN</th>
                      <th>Email</th>
                      <th><button class="btn btn-danger">Xóa</button></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>001</td>
                      <td>Nguyễn văn A</td>
                      <td>nguyenfff7@gmail.com</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>002</td>
                      <td>Nguyễn văn B</td>
                      <td>lvawnh97@gmail.com</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>003</td>
                      <td>Lê Văn C</td>
                      <td>hdhfhsg97@gmail.com</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>004</td>
                      <td>Hoàng Lê văn</td>
                      <td>ggghsssff7@gmail.com</td>
                      <td><button class="btn btn-warning">Sửa</button></td>
                    </tr>
                  </tbody>
                    
              </table>
            </div>
          </div>          
        </div>
      </div>
      </main>
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
        </ul>
      <!-- Tab panes--></aside>
    </div>
    <footer class="app-footer">
      <div>
        <a href="https://haui.com.vn">haui</a>
        <span>KTPM1</span>
      </div>
      <div class="ml-auto">
        <span>Designed by</span>
        <a href="https://facebook.com/Anonymousle.Yami">Nhóm 21</a>
      </div>
    </footer>
    <!-- CoreUI and necessary plugins-->
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/pace-progress/pace.min.js"></script>
    <script src="node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
    <script src="node_modules/@coreui/coreui/dist/js/coreui.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="node_modules/chart.js/dist/Chart.min.js"></script>
    <script src="node_modules/@coreui/coreui-plugin-chartjs-custom-tooltips/dist/js/custom-tooltips.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>