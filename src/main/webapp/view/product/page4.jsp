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
            <a href="../product/page1.jsp">Products</a>
            <a href="../shoppingcart/shopping_cart.jsp">Checkout</a>
        </nav>

        
    </header>

    <div class="content">

        <div class="product">
            <img src="../../images/product/epresso.png" alt="espresso shot" />
            <div class="product-info">
                <h3>ESPRESSO SHOT</h3>
                <p>The bold aroma of our Espresso Shot, made from finely roasted coffee beans.
                    It delivers an intense flavour profile with a velvety crema and a bittersweet finish.
                </p>
                <div class="price-cart">
                    <div class="price">40.000₫</div>
                    <button class="btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/ristretto.png" alt="ristretto" />
            <div class="product-info">
                <h3>RISTRETTO</h3>
                <p>The concentrated aroma of our Ristretto, brewed with a shorter extraction for a richer, sweeter
                    experience.
                    It boasts a syrupy body, bold flavour, and a smooth, lingering sweetness. </p>
                <div class="price-cart">
                    <div class="price">45.000₫</div>
                    <button class="btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="product">
            <img src="../../images/product/croissant.png" alt="croissant" />
            <div class="product-info">
                <h3>CROISSANT</h3>
                <p>The buttery aroma of our Croissant, freshly baked to golden perfection.
                    It offers a flaky, tender texture with delicate layers and a subtle, savory-sweet finish.</p>
                <div class="price-cart">
                    <div class="price">50.000₫</div>
                    <button class="btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="page-nav_4">
            <a href="page3.jsp" class="page-link">&lt; Previous page</a>
           
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