<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coffee Shop - Sản phẩm</title>
<link rel="stylesheet" href="../../css/product/style.css">
</head>
<body>
	<header>
		 <a href="../index.jsp" class="logo"> Coffee Shop </a>
		<nav>
			<a href="../product/page1.jsp">Sản phẩm</a> <a
				href="../shoppingcart/shopping_cart.jsp">Giỏ hàng</a>
		</nav>
	</header>

	<div class="content">
		<!-- Americano -->
		<div class="product">
			<img src="../../images/product/americano.png" alt="Americano" />
			<div class="product-info">
				<h3>Americano</h3>
				<p>Cà phê Americano thơm ngon</p>
				<div class="price-cart">
					<div class="price">40.000₫</div>
					<form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input type="hidden" name="maSanPham" value="1" />
						<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
				</div>
			</div>
		</div>

		<!-- Cappuccino -->
		<div class="product">
			<img src="../../images/product/capuchino.png" alt="Cappuccino" />
			<div class="product-info">
				<h3>Cappuccino</h3>
				<p>Cappuccino đậm đà hương vị</p>
				<div class="price-cart">
					<div class="price">45.000₫</div>
					<form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="2" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
				</div> 
			</div>
		</div>
		
		<div class="product">
            <img src="../../images/product/Yule_log_cake.png" alt="Yule Log Cake" />
            <div class="product-info">
                <h3>Yule Log Cake</h3>
                <p>Taste a combination of sweet and rich flavours of our thin sheet of sponge cake
                    filled with a creamy filling, chocolate ganache,buttercream and a cherry
                    on top as a garnish.</p>
                <div class="price-cart">
                    <div class="price">45.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="3" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>
        <div class="page-nav">
            <a href="page2.jsp" class="page-link">Next page &gt;</a>
        </div>
	</div>

	<footer>
		<div class="footer-top">
			<div class="logo">Coffee Shop</div>
			<p>one Stop | one Heart | one Cup</p>
		</div>
		<div class="footer-links">
			<!-- Sửa các đường dẫn footer -->
			<a href="../gioithieuquan/OurCoffeeShop.jsp" class="footer-btn">Our
				Coffee Shop</a> <a href="../gioithieuquan/OurCoffeBeans.jsp"
				class="footer-btn">Our Coffee Beans</a> <a
				href="../gioithieuquan/OurPastry.jsp" class="footer-btn">Our
				Pastry</a>
		</div>
		<p class="copyright">© 2023 All Rights Reserved</p>
	</footer>
</body>
</html>