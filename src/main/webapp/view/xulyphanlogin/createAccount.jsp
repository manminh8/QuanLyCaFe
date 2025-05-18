<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />

    <title>Coffee Shop - createAccount</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xulylogin/style_createAccount.css" />
	
</head>

<body>
    <header>
        <div class="logo">Coffee Shop</div>
        <nav>
            <a href="#">Products</a>
            <a href="#">Checkout</a>
        </nav>
    </header>

    <main>
        <h1>Create an Account</h1>
        <form class="createAccount-box">
            <p><span class="required">*</span> indicates required field</p>
            <b>Personal Information</b>
             <input type="text"  placeholder="*  First Name" required  />
            <input type="text" placeholder="*  Last Name" required />
            <b>Account Security</b>
            <input type="text" placeholder="*  Email address" required />
            <p>This will be your username</p>
            <input type="password" placeholder="*  Password" required />
            <p>Create a password 5 to 25 characters long that includes at least
                1 uppercase and 1 lowercase letter, 1 number and 1 special character
                like an exclamation point or asterisk.</p>
            <p>Terms of Use</p>
            <div class="remember">
                <input type="checkbox" id="keep-createAccout" />
                <label for="keep-createAccout"><span class="required">*</span> I agree to the terms of Coffe shop</label>
              
            </div>
           
               
                <button type="submit" class="create">Create account</button>
                    <a href="login.jsp" class="back-button">Back to</a> 
           
               
       
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