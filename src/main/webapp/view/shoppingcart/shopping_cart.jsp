<%@ page import="model.Cart,model.CartItem" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>Giỏ hàng của bạn</title>
  <link rel="stylesheet" href="../../css/shoppingcart/style_shopping.css" />
</head>
<body>
<header>
    <div class="logo">Coffee Shop</div>
    <nav>
        <a href="../product/page1.jsp">Products</a>
        <a href="#">Checkout</a>
    </nav>
</header>
<main class="cart-container">
  <section class="cart">
    <h1>Giỏ hàng của bạn</h1>
    <% 
      Cart cart = (Cart) session.getAttribute("cart");
      if (cart != null && !cart.isEmpty()) { 
    %>
    <table>
      <thead>
        <tr>
          <th>Tên sản phẩm</th>
          <th>Giá</th>
          <th>Số lượng</th>
          <th>Tổng tiền</th>
          <th>Hành động</th>
        </tr>
      </thead>
      <tbody>
        <%
          for (CartItem item : cart.getItems()) {
        %>
        <tr>
          <td><%= item.getName() %></td>
          <td><%= item.getPrice() %> VND</td>
          <td>
            <form action="../../cart" method="post" style="display:inline;">
              <input type="hidden" name="action" value="update"/>
              <input type="hidden" name="productId" value="<%=item.getProductId()%>"/>
              <input type="number" name="quantity" value="<%=item.getQuantity()%>" min="1" max="<%=item.getMaxQuantity()%>" style="width:50px;"/>
              <button type="submit">Cập nhật</button>
            </form>
          </td>
          <td><%= item.getTotalPrice() %> VND</td>
          <td>
            <form action="../../cart" method="post" style="display:inline;">
              <input type="hidden" name="action" value="remove"/>
              <input type="hidden" name="productId" value="<%=item.getProductId()%>"/>
              <button type="submit">Xóa</button>
            </form>
          </td>
        </tr>
        <% } %>
      </tbody>
    </table>
    <div class="total">Tổng cộng: <strong><%=cart.getTotal()%> VND</strong></div>
    <% } else { %>
      <p>Giỏ hàng của bạn đang trống.</p>
    <% } %>
    <button onclick="window.location.href='../product/page1.jsp'" class="back-btn">&lt; Quay lại mua hàng</button>
  </section>
</main>
<footer>
  <div class="footer-top">    
      <div class="logo">Coffee Shop</div>  
      <p>one Stop | one Heart | one Cup</p>
  </div>
  <div class="footer-links">
    <a href="#" class="footer-btn">Our Coffee Shop</a>
    <a href="#" class="footer-btn">Our Coffee Beans</a>
    <a href="#" class="footer-btn">Our Pastry</a>
  </div>
  <p class="copyright">© 2023 All Rights Reserved</p>
</footer>
</body>
</html>