<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Coffee Shop</title>
  <link rel="stylesheet" href="../css/style_index.css" />
</head>
<body>
    <header>
        <a href="../view/index.jsp" class="logo"> Coffee Shop </a>
        <nav>
            <a href="product/page1.jsp">Sản phẩm</a>
            <a href="../view/shoppingcart/shopping_cart.jsp">Checkout</a>
            <a href="../view/xulyphanlogin/login.jsp">Login</a>
        </nav>
        
    </header>

  <section class="hero">
    <div class="hero-text">
      <h1>DISCOVER<br>NEW<br>FLAVOURS</h1>
      <p>Coffee always sounds like a brilliant idea.</p>
     <!--<a href="../product_1/product1.jsp" class="button-link">Shop All Products ></a>-->
      <button onclick="window.location.href='product/page1.jsp'" class="shop-button">
  Shop All Products >
</button>
    </div>
  </section>

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
