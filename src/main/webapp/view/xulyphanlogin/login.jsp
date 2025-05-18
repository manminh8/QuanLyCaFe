<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coffee Shop - Sign In</title>
    <link rel="stylesheet" href="../../css/xulylogin/style_login.css" />
    
</head>

<body>
    <header>
        <div class="logo"> <a href="../index.jsp"> Coffee Shop</a></div>
        <nav>
            <a href="#">Products</a>
            <a href="#">Checkout</a>
        </nav>
    </header>

    <main>
        <h1>Sign in</h1>
        <form class="login-box">
            <p><span class="required">*</span> indicates required field</p>
            <input type="text" placeholder="*  Username or email address" required />
            <input type="password" placeholder="*  Password" required />

            <div class="remember">
                <input type="checkbox" id="keep-signed-in" />
                <label for="keep-signed-in">Keep me signed in</label>
            </div>
            
            <a href="forgotPass.jsp" class="forgotpass">Forgot your password?</a> <br>
            <a href="createAccount.jsp" class="createAccount">You don't have an account yet?</a>
            <button type="submit" class="signin-btn">Sign in</button>
        </form>
    </main>

    <footer>
        <div class="footer-top">    
            <div class="logo">Coffee Shop</div>  
            <p>one Stop | one Heart | one Cup</p>
           
        </div>

  <div class="footer-links">
  
  <a href="../GioiThieu_Quan/OurCoffeeShop.jsp" class="footer-btn">Our Coffee Shop</a>
    <a href="../GioiThieu_Quan/OurCoffeBeans.jsp" class="footer-btn">Our Coffee Beans</a>
    <a href="../GioiThieu_Quan/OurPastry.jsp" class="footer-btn">Our Pastry</a>
  
</div>
        <p class="copyright">© 2023 All Rights Reserved</p>
    </footer>
     
</body>
    
</html>
