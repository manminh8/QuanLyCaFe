<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">Quên mật khẩu</h3>
                    </div>
                    <div class="card-body">
                        <% if(request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>
                        
                        <% if(request.getAttribute("message") != null) { %>
                            <div class="alert alert-success">
                                <%= request.getAttribute("message") %>
                            </div>
                        <% } %>
                        
                        <form action="${pageContext.request.contextPath}/quenmatkhau" method="post">
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                                <small class="form-text text-muted">
                                    Nhập email đã đăng ký để nhận mật khẩu mới
                                </small>
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-block">Gửi mật khẩu mới</button>
                        </form>
                        
                        <div class="mt-3 text-center">
                            <a href="login.jsp">Quay lại trang đăng nhập</a>
                        </div>
                        <div class="mt-3 text-center">
								<a href="${pageContext.request.contextPath}/view/index.jsp"
									class="btn btn-secondary btn-block"> <i class="fas fa-home"></i>
									Quay về trang chủ
								</a>
							</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>