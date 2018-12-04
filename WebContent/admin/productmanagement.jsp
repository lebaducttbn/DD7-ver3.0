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
    <title>Quản Trị Viên</title>
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
    
    <script type="text/javascript" src="./js/nicEdit.js"></script>

    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap-4.min.js"></script>
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
        <li>
          <!-- The Modal -->
          <div class="modal fade" id="modal-changeInfor">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
              
                <!-- Modal Header -->
                <div class="modal-header">
                  <h2 class="modal-title">CẬP NHẬT THÔNG TIN</h2>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="input-group mb-3">
                <div class="input-group-prepend">
                </div>
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-user"></i></span>
                </div>
                <input class="form-control" type="text" placeholder="Họ và tên">
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                </div>
                <input class="form-control" type="text" placeholder="Email">
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-address-book"></i>
                  </span>
                </div>
                <input class="form-control" type="text" placeholder="Địa chỉ">
              </div>
              <div class="input-group mb-4">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-male"></i>
                  </span>
                </div>
                <select placeholder="Giới tính" class="form-control">
                  <option>Nam</option>
                  <option>Nữ</option>
                </select>
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-vcard"></i>
                  </span>
                </div>
                <input class="form-control" type="text" placeholder="Số CMND">
              </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">THOÁT</button>
                  <button type="button" class="btn btn-success" data-dismiss="modal">CẬP NHẬT</button>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li>
          <!-- The Modal -->
          <div class="modal fade" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">
              
                <!-- Modal Header -->
                <div class="modal-header">
                  <h2 class="modal-title">Đổi mật khẩu</h2>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="input-group mb-3">
                <div class="input-group-prepend">
                </div>
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                </div>
                <input class="form-control" type="text" placeholder="Email">
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-lock"></i>
                  </span>
                </div>
                <input class="form-control" type="password" placeholder="Mật khẩu">
              </div>
              <div class="input-group mb-4">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-lock"></i>
                  </span>
                </div>
                <input class="form-control" type="password" placeholder="Nhập lại mật khẩu">
              </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">THOÁT</button>
                  <button type="button" class="btn btn-success" data-dismiss="modal">ĐỔI MẬT KHẨU</button>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li class="nav-item dropdown dropleft float-right">
          <a class="nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              <img class="accountManagement img-avatar" src="img/avatars/8.jpg" alt="admin@bootstrapmaster.com">
              <div class="dropdown-menu">
                <a class="dropdown-item" data-toggle="modal" data-target="#modal-changeInfor">Cập nhật thông tin</a>
                
                <a class="dropdown-item" href="login.html"  data-toggle="modal" data-target="#myModal">Đổi mật khẩu</a>
                <a class="dropdown-item" href="login.html">Đăng xuất</a>
              </div>
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
                    <img src="img/avatars/8.jpg" alt="admin@bootstrapmaster.com" width="59" height="53" class="img-avatar">
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
              <a style="background-color: green" class="nav-link manager-category" data-set=".main-product-manager" href="productmanagement.html">
                <div>Quản lý sản phẩm</div>
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
            <h2 class="breadcrumb breadcrumb-item">Quản lý Danh Mục</h2>
          <div class="container-fluid">
          	<div class="title-product-admin">
	          	<div>
	          		<h5>Chọn tên danh mục</h5>
                <input class="txt-category form-control" type="text" list="categoryList" placeholder="Danh mục" name="">
		          	<datalist id="categoryList" style="width: 500px; margin-bottom: 20px;">
		          		<option class="fa fa-times-circle"></option>
		          		<option>Tour Miền Bắc</option>
		          		<option>Tour Miền Trung</option>
		          		<option>Tour Miền Nam</option>
		          	</datalist>
                <button class="btn btn-success">Thêm</button>
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger">Xóa</button>
	          	</div>
              <div class="showProductAmount">
                <span>Hiển thị </span>
                <select>
                  <option>10</option>
                  <option>100</option>
                  <option>1000</option>
                  <option>10000</option>
                </select>
                <span> Tour</span>
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
                      <th>Khu Vực <span class="fa fa-sort"></span></th>
                      <th>Địa Điểm<span class="fa fa-sort"></span></th>
                      <th>GIÁ TIỀN <span class="fa fa-sort"></span></th>
                      <th>GIÀNH CHO <span class="fa fa-sort"></span></th>
                      <th>SỐ LƯỢNG <span class="fa fa-sort"></span></th>
                      <th>MÔ TẢ</th>
                      <!---<th>MÀU</th>
                      <th>SIZE</th>
                      --->
                      <th>ẢNH</th>
                      <th>SỬA</th>
                      <th>XÓA</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td> Miền Bắc</td>
                      <td>Hạ Long</td>
                      <td>500.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                     <!---- <td>
                      	<select>
	                      	<option>Đỏ</option>
	                      	<option>Xanh</option>
	                      	<option>Vàng</option>
                      	</select>
                 	  </td>
                 	  <td>
                      	<select>
	                      	<option>M</option>
	                      	<option>L</option>
	                      	<option>XL</option>
                      	</select>	
                 	  </td> --->
                    <td><img src="./images/shop/dulich2.jpg" width="76" height="69"></td>
                 	  <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                 	  <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Nam</td>
                      <td>TP.HCM</td>
                      <td>1000.000 VNĐ</td>
                      <td>Gia Đình</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                      <!---<td>
                      	<select>
	                      	<option>Đỏ</option>
	                      	<option>Xanh</option>
	                      	<option>Vàng</option>
                      	</select>
                   	  </td>
                   	  <td>
                        	<select>
  	                      	<option>M</option>
  	                      	<option>L</option>
  	                      	<option>XL</option>
                        	</select>	
                   	  </td> --->
                      <td><img src="./images/shop/dulich2.jpg"></td>
                   	  <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                   	  <td><span class="fa fa-times-circle"></span></td>
                      </tr>
                      <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td> Miền Trung</td>
                      <td>Kinh Thành  Huế</td>
                      <td>1000.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                     <!---- <td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td> --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Bắc</td>
                      <td>Mộc Châu</td>
                      <td>600.000 VNĐ</td>
                      <td>Gia Đình</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                      <!----<td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td> --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Bắc</td>
                      <td>Hoa Lư</td>
                      <td>700.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                      <!----<td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td>  --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Nam</td>
                      <td>Phú Quốc</td>
                      <td>1000.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                     <!--- <td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td>  -->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Nam</td>
                      <td>Bà Rịa - Vũng Tàu</td>
                      <td>300.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                      <!---<td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td>  --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Trung</td>
                      <td>Đà  Nẵng</td>
                      <td>500.000 VNĐ</td>
                      <td>Gia Đình</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                      <!---- <td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td> --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    <tr>
                      <td><input class="chk-product" type="checkbox" name=""></td>
                      <td>Miền Trung</td>
                      <td>Quảng Ngãi</td>
                      <td>500.000 VNĐ</td>
                      <td>Nhóm</td>
                      <td>100</td>
                      <td>Dịch Vụ</td>
                     <!--- <td>
                        <select>
                          <option>Đỏ</option>
                          <option>Xanh</option>
                          <option>Vàng</option>
                        </select>
                    </td>
                    <td>
                        <select>
                          <option>M</option>
                          <option>L</option>
                          <option>XL</option>
                        </select> 
                    </td>  --->
                    <td><img src="./images/shop/dulich1.jpg"></td>
                    <td><a href="edit-product.html" target="_blank"><span class="fa fa-edit"></span></a></td>
                    <td><span class="fa fa-times-circle"></span></td>
                    </tr>
                    </tbody>
                  </table>
                <div class="btn-delete">
            		<button type="submit" class="btn btn-danger">Xóa các sản phẩm</button>
            		<a href="add-product.html" target="_blank"><button class="btn btn-success">Thêm sản phẩm</button></a>
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
        <!-- Tab panes-->
      </aside>
    <footer class="app-footer">
      <div>
        <a href="https://haui.com.vn">Haui</a>
        <span>KTPM1</span>
      </div>
      <div class="ml-auto">
        <span>Designed by</span>
        <a href="https://facebook.com/">Nhóm 21</a>
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