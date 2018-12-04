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
    <title>CoreUI Free Bootstrap Admin Template</title>
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
                    <img class="img-avatar" src="img/avatars/8.jpg" alt="admin@bootstrapmaster.com">
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
              <a class="nav-link manager-category" data-set=".main-product-manager" href="productmanagement.html">
                <div>Quản lý sản phẩm</div>
              </a>
            </li>
            <li class="nav-title">
              <a style="background-color: green" class="nav-link manager-category" data-set=".main-bill-manager" href="billmanagement.html">
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
            
        	<div class="main-content main-bill-manager">
            	<h2 classs="breadcrumb breadcrumb-item">Quản lý hóa đơn</h2>
          		<div class="container-fluid">
    			<div class="row">
              <div class="col-lg-12">
                <table class="table">
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="chk-checkAll"></th>
                      <th>TÊN KHÁCH HÀNG</th>
                      <th>SỐ ĐIỆN THOẠI</th>
                      <th>ĐỊA CHỈ GIAO HÀNG</th>
                      <th>NGÀY LẬP</th>
                      <th>HÌNH THỨC THANH TOÁN</th>
                      <th>DANH SÁCH Tour Đăng Ký</th>
                      <th>GHI CHÚ</th>
                      <th>SỬA</th>
                      <th>XÓA</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Nguyễn Văn Hoàng</td>
                      <td>093323223232</td>
                      <td>Hà Nội</td>
                      <td>25/09/2018</td>
                      <td>Thanh toán trực tiếp</td>
                      <td>Tour Miền  Bắc - Hoa Lư</td>
                      <td>Đã thanh toán</td>
                      <td><span class="fa fa-edit"></span></td>
                      <td><span class="fa fa-times-circle""></span></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Trần tiến K</td>
                      <td>02939283323</td>
                      <td> Hà Nội</td>
                      <td>25/09/2018</td>
                      <td>Thanh toán trực tiếp</td>
                      <td>Tour Miền Nam-Tp.Hồ Chí Minh
                      </td>
                      <td>Đã thanh toán</td>
                      <td><span class="fa fa-edit"></span></td>
                      <td><span class="fa fa-times-circle""></span></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="chk-product"></td>
                      <td>Lê Hoàng Đại</td>
                      <td>092327332</td>
                      <td> Hà Nội</td>
                      <td>25/09/2018</td>
                      <td>Thanh toán trực tiếp</td>
                      <td>Tour Miền Bắc - Hạ Long</td>
                      <td>Đã thanh toán</td>
                      <td><span class="fa fa-edit"></span></td>
                      <td><span class="fa fa-times-circle""></span></td>
                    </tr>
                  </tbody>
                </table>
                <div class="btn-delete">
            		<button type="submit" class="btn btn-danger">Xóa các hóa đơn</button>
            		<a href="add-product.html" target="_blank"><button class="btn btn-success">Thêm hóa đơn</button></a>
              </div>
            </div>          
          </div>
        </div>
		</div>
      </main>
    </div>
    <footer class="app-footer">
      <div>Đại Học Công Nghiêp Hà Nội<span></span>
      </div>
      <div class="ml-auto">
        <span>Designed by</span> Nhóm 21<a href="https://facebook.com/Anonymousle.Yami"></a>
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