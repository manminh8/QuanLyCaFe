<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h3 class="text-center">Đăng nhập</h3>
					</div>
					<div class="card-body">
						<%
						if (request.getAttribute("error") != null) {
						%>
						<div class="alert alert-danger">
							<%=request.getAttribute("error")%>
						</div>
						<%
						}
						%>

						<%
						if (request.getAttribute("message") != null) {
						%>
						<div class="alert alert-success">
							<%=request.getAttribute("message")%>
						</div>
						<%
						}
						%>

						<form action="${pageContext.request.contextPath}/dangnhap"
							method="post">
							<div class="form-group">
								<label for="username">Tài khoản đăng nhập:</label> <input
									type="text" class="form-control" id="username" name="username"
									required>
							</div>

							<div class="form-group">
								<label for="password">Mật khẩu:</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col">
										<a href="createAccount.jsp">Đăng ký tài khoản mới</a>
									</div>
									<div class="col text-right">
										<a href="forgotPass.jsp">Quên mật khẩu?</a>
									</div>
								</div>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Đăng
								nhập</button>
							<div class="mt-3 text-center">
								<a href="${pageContext.request.contextPath}/view/index.jsp"
									class="btn btn-secondary btn-block"> <i class="fas fa-home"></i>
									Quay về trang chủ
								</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>