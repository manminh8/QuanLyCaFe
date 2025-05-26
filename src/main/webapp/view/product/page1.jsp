<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <div class="logo">Coffee Shop</div>
        <nav>
            <a href="page1.jsp">Sản phẩm</a>
            <a href="../shoppingcart/shopping_cart.jsp">Giỏ hàng</a>
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
                        <input type="number" name="soLuong" value="1" min="1" max="10" 
                               style="width: 50px; margin-right: 10px;" />
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
                        <input type="hidden" name="maSanPham" value="2" />
                        <input type="number" name="soLuong" value="1" min="1" max="10" 
                               style="width: 50px; margin-right: 10px;" />
                        <button class="btn" type="submit">Thêm vào giỏ hàng</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer-top">    
            <div class="logo">Coffee Shop</div>  
            <p>one Stop | one Heart | one Cup</p>
        </div>
        <p class="copyright">© 2023 All Rights Reserved</p>
    </footer>
</body>
</html>