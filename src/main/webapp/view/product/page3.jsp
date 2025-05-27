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
          <a href="../index.jsp" class="logo"> Coffee Shop </a>
        <nav>
            <a href="../product/product1.jsp">Sản phẩm</a>
            <a href="../shoppingcart/shopping_cart.jsp">Giỏ hàng</a>
        </nav>

        
    </header>

    <div class="content">

        <div class="product">
            <img src="../../images/product/greentea.png" alt="green tea" />
            <div class="product-info">
                <h3>GREEN TEA</h3>
                <p>The refreshing aroma of our Green Tea, brewed from premium tea leaves.
                    It presents a light, grassy fragrance with earthy notes and a clean, calming finish.</p>
                <div class="price-cart">
                    <div class="price">50.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="7" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/hot_chocolate.png" alt="hot chocolate" />
            <div class="product-info">
                <h3>HOT CHOCOLATE</h3>
                <p>The indulgent aroma of our Hot Chocolate, crafted with rich cocoa and steamed milk.
                    It reveals a silky body, sweet chocolatey notes, and a warm, satisfying finish.</p>
                <div class="price-cart">
                    <div class="price">50.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="8" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/tiramisu.png" alt="tiramisu" />
            <div class="product-info">
                <h3>TIRAMISU</h3>
                <p>The decadent aroma of our Tiramisu, layered with espresso-soaked sponge and mascarpone cream.
                    It offers a harmonious balance of coffee richness and sweet creaminess.</p>
                <div class="price-cart">
                    <div class="price">55.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="9" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>

        <div class="page-nav">
            <a href="page2.jsp" class="page-link">&lt; Previous page</a>
            <a href="page4.jsp" class="page-link">Next page &gt;</a>
        </div>

    </div>

    <footer>
        <div class="footer-top">    
            <div class="logo">Coffee Shop</div>  
            <p>one Stop | one Heart | one Cup</p>
           
        </div>

  <div class="footer-links">
  <a href="#" class="footer-btn" data-page="OurCoffeeShop.jsp">Our Coffee Shop</a>
  <a href="#" class="footer-btn" data-page="OurCoffeBeans.jsp">Our Coffee Beans</a>
  <a href="#" class="footer-btn" data-page="OurPastry.jsp">Our Pastry</a>
</div>
        <p class="copyright">© 2023 All Rights Reserved</p>
    </footer>
      <script src="script.js"></script>

</body>

</html>