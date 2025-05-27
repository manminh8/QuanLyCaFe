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
            <a href="../shoppingcart/shopping_cart.jsp">Checkout</a>
        </nav>
        
    </header>

    <div class="content">

        <div class="product">
            <img src="../../images/product/macchiato.png" alt="macchiato" />
            <div class="product-info">
                <h3>MACCHIATO</h3>
                <p>The rich aroma of our Macchiato,
                    crafted with a bold espresso shot lightly topped with velvety milk foam.
                    It offers a deep coffee flavour with a hint of creaminess and a smooth, lingering finish.</p>
                <div class="price-cart">
                    <div class="price">45.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="4" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/latte.png" alt="latte" />
            <div class="product-info">
                <h3>LATTE</h3>
                <p>The comforting aroma of our Latte, blending smooth espresso with steamed milk.
                    It delivers a creamy body, subtle sweetness, and a gentle, mellow coffee flavour.</p>
                <div class="price-cart">
                    <div class="price">50.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="5" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/macaron.png" alt="macaron" />
            <div class="product-info">
                <h3>MACARON</h3>
                <p>The delicate aroma of our Macaron, featuring a crisp shell and luscious filling.
                    It offers a light sweetness with nutty undertones and a melt-in-the-mouth finish.</p>
                <div class="price-cart">
                    <div class="price">45.000₫</div>
                    <form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="action" value="add" /> 
						<input	type="hidden" name="maSanPham" value="6" /> 
							<input type="hidden" name="soLuong" value="1"/>
						<button class="btn" type="submit">Thêm vào giỏ hàng</button>
					</form>
                </div>
            </div>
        </div>
        <div class="page-nav">
            <a href="page1.jsp" class="page-link"> &lt; Previous page</a>
            <a href="page3.jsp" class="page-link">Next page &gt;</a>
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