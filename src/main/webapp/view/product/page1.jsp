<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Coffee Shop</title>
<link rel="stylesheet" href="../../css/product/style.css">
</head>

<body>

	<header>
		<div class="logo">Coffee Shop</div>
		<nav>
			<a href="../product/product1.jsp">Products</a> <a
				href="../shoppingcart/shopping_cart.jsp">Checkout</a>
		</nav>


	</header>

	<div class="content">

		<div class="product">
			<img src="../../images/product/americano.png" alt="Americano" />
			<div class="product-info">
				<h3>Americano</h3>
				<p>The aroma of our Americano brewed with premium roasted coffee
					grounds and hot water. It has a velvety body, caramel-like aroma
					with an earthy flavour and bittersweet finish.</p>
				<div class="price-cart">
					<div class="price">40.000₫</div>
					<form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input type="hidden" name="productId" value="1" />
						<input type="hidden" name="quantity" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
				</div>
			</div>
		</div>

		<div class="product">
			<img src="../../images/product/capuchino.png" alt="Cappuccino" />
			<div class="product-info">
				<h3>Cappuccino</h3>
				<p>With the richness and intensity of espresso, complemented by
					the creamy and velvety texture of steamed milk, offering a
					combination of strong coffee notes, subtle sweetness, and a touch
					of bitterness.</p>
				<div class="price-cart">
					<div class="price">40.000₫</div>
					<button class="btn">Add to Cart</button>
				</div>
			</div>
		</div>

		<div class="product">
			<img src="../../images/product/Yule_log_cake.png" alt="Yule Log Cake" />
			<div class="product-info">
				<h3>Yule Log Cake</h3>
				<p>Taste a combination of sweet and rich flavours of our thin
					sheet of sponge cake filled with a creamy filling, chocolate
					ganache,buttercream and a cherry on top as a garnish.</p>
				<div class="price-cart">
					<div class="price">45.000₫</div>
					<button class="btn">Add to Cart</button>
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
			<a href="#" class="footer-btn" data-page="OurCoffeeShop.jsp">Our
				Coffee Shop</a> <a href="#" class="footer-btn"
				data-page="OurCoffeBeans.jsp">Our Coffee Beans</a> <a href="#"
				class="footer-btn" data-page="OurPastry.jsp">Our Pastry</a>
		</div>
		<p class="copyright">© 2023 All Rights Reserved</p>
	</footer>
	<script src="script.js"></script>

</body>

</html>