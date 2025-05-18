<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Shopping Cart</title>
  <link rel="stylesheet" href="../../css/shoppingcart/style_shopping.css" />
</head>
<body>
  <header>
        <div class="logo">Coffee Shop</div>
        <nav>
            <a href="#">Products</a>
            <a href="#">Checkout</a>
        </nav>
    </header>

  <main class="cart-container">
    <section class="cart">
      <h1>Shopping Cart</h1>
      <table>
        <thead>
          <tr>
            <th>Product</th>
            <th>Quality</th>
            <th>Total Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="product">
              <img src="../../images/shoppingcart/anhlyCafe.png" alt="Coffee">
              <span>Coffee</span>
            </td>
            <td>
              <div class="quantity">
                <button>-</button>
                <span>1</span>
                <button>+</button>
              </div>
            </td>
            <td>40.000VND <span class="remove">×</span></td>
          </tr>
          <tr>
            <td class="product">
              <img src="../../images/shoppingcart/cafe.jpg" alt="Cappuccino">
              <span>Cappuccino</span>
            </td>
            <td>
              <div class="quantity">
                <button>-</button>
                <span>3</span>
                <button>+</button>
              </div>
            </td>
            <td>120.000VND <span class="remove">×</span></td>
          </tr>
          <tr>
            <td class="product">
              <img src="../../images/shoppingcart/78438bd1e4070a966632ee92f0b7a76d.jpg" alt="Croissant">
              <span>Croissant</span>
            </td>
            <td>
              <div class="quantity">
                <button>-</button>
                <span>2</span>
                <button>+</button>
              </div>
            </td>
            <td>90.000VND <span class="remove">×</span></td>
          </tr>
        </tbody>
      </table>

      <div class="total">Total: <strong>250.000VND</strong></div>
      <button onclick="window.location.href='../product/product1.html'" class="back-btn"> &lt; Back to Order
        
      </button>
    </section>

    <aside class="payment">
      <h2>Pay By</h2>
      <button><img src="../../images/shoppingcart/VISA.png" alt="Visa"></button>
      <button><img src="../../images/shoppingcart/Touch'nGo.png" alt="TouchNGo"></button>
      <button><img src="../../images/shoppingcart/cash.png" alt="Cash"></button>
    </aside>

  </main>
  <footer>
        <div class="footer-top">    
            <div class="logo">Coffee Shop</div>  
            <p>one Stop | one Heart | one Cup</p>
           
        </div>

  <div class="footer-links">
  <a href="#" class="footer-btn" data-page="OurCoffeeShop.html">Our Coffee Shop</a>
  <a href="#" class="footer-btn" data-page="OurCoffeBeans.html">Our Coffee Beans</a>
  <a href="#" class="footer-btn" data-page="OurPastry.html">Our Pastry</a>
</div>
        <p class="copyright">© 2023 All Rights Reserved</p>
    </footer>
      <script src="script.js"></script>
</body>
</html>
