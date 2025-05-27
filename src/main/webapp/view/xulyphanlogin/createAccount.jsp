<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .error-message {
            color: red;
            margin-bottom: 10px;
        }
        .required-field::after {
            content: " *";
            color: red;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">Đăng ký tài khoản</h3>
                    </div>
                    <div class="card-body">
                        <!-- Hiển thị thông báo lỗi nếu có -->
                        <% if(request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>
                        
                        <form action="${pageContext.request.contextPath}/dangky" method="post" onsubmit="return validateForm()">
                            <!-- Tài khoản -->
                            <div class="form-group">
                                <label for="taikhoan" class="required-field">Tài khoản</label>
                                <input type="text" 
                                       class="form-control" 
                                       id="taikhoan" 
                                       name="taikhoan" 
                                       required
                                       maxlength="50">
                            </div>
                            
                            <!-- Mật khẩu -->
                            <div class="form-group">
                                <label for="matkhau" class="required-field">Mật khẩu</label>
                                <input type="password" 
                                       class="form-control" 
                                       id="matkhau" 
                                       name="matkhau" 
                                       required
                                       maxlength="100">
                            </div>
                            
                            <!-- Xác nhận mật khẩu -->
                            <div class="form-group">
                                <label for="xacNhanMatKhau" class="required-field">Xác nhận mật khẩu</label>
                                <input type="password" 
                                       class="form-control" 
                                       id="xacNhanMatKhau" 
                                       required
                                       maxlength="100">
                            </div>
                            
                            <!-- Tên người dùng -->
                            <div class="form-group">
                                <label for="tennguoidung">Tên người dùng</label>
                                <input type="text" 
                                       class="form-control" 
                                       id="tennguoidung" 
                                       name="tennguoidung"
                                       maxlength="100">
                            </div>
                            
                            <!-- Email -->
                            <div class="form-group">
                                <label for="email" class="required-field">Email</label>
                                <input type="email" 
                                       class="form-control" 
                                       id="email" 
                                       name="email" 
                                       required
                                       maxlength="100">
                            </div>
                            
                            <!-- Địa chỉ -->
                            <div class="form-group">
                                <label for="diachi">Địa chỉ</label>
                                <input type="text" 
                                       class="form-control" 
                                       id="diachi" 
                                       name="diachi"
                                       maxlength="200">
                            </div>
                            
                            <!-- Số điện thoại -->
                            <div class="form-group">
                                <label for="sodienthoai">Số điện thoại</label>
                                <input type="tel" 
                                       class="form-control" 
                                       id="sodienthoai" 
                                       name="sodienthoai"
                                       pattern="[0-9]{10,15}"
                                       maxlength="15">
                                <small class="form-text text-muted">Nhập số điện thoại từ 10-15 chữ số</small>
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
                            </div>
                        </form>
                        <div class="mt-3 text-center">
								<a href="${pageContext.request.contextPath}/view/index.jsp"
									class="btn btn-secondary btn-block"> <i class="fas fa-home"></i>
									Quay về trang chủ
								</a>
							</div>
                        <div class="text-center mt-3">
                            <a href="${pageContext.request.contextPath}/view/xulyphanlogin/login.jsp">Đã có tài khoản? Đăng nhập ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript cho validation form -->
    <script>
        function validateForm() {
            var matkhau = document.getElementById("matkhau").value;
            var xacNhanMatKhau = document.getElementById("xacNhanMatKhau").value;
            
            if (matkhau !== xacNhanMatKhau) {
                alert("Mật khẩu xác nhận không khớp!");
                return false;
            }
            
            var sodienthoai = document.getElementById("sodienthoai").value;
            if (sodienthoai && !sodienthoai.match(/^[0-9]{10,15}$/)) {
                alert("Số điện thoại không hợp lệ! Vui lòng nhập từ 10-15 chữ số.");
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>