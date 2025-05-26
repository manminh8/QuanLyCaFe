<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="controller.CartServlet.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng của bạn</title>
    <link rel="stylesheet" href="../../css/shoppingcart/style_shopping.css">
</head>
<body>
    <header>
        <div class="logo">Coffee Shop</div>
        <nav>
            <a href="../product/page1.jsp">Sản phẩm</a>
            <a href="#">Thanh toán</a>
        </nav>
    </header>

    <main class="cart-container">
        <section class="cart">
            <h1>Giỏ hàng của bạn</h1>
            <% 
                @SuppressWarnings("unchecked")
                List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
                NumberFormat formatTien = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
                
                if (cart != null && !cart.isEmpty()) { 
            %>
            <table>
                <thead>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (CartItem item : cart) { %>
                    <tr>
                        <td><%=item.getTenSanPham()%></td>
                        <td><%=formatTien.format(item.getDonGia())%></td>
                        <td>
                            <form action="<%=request.getContextPath()%>/cart" method="post" style="display:inline;">
                                <input type="hidden" name="action" value="update"/>
                                <input type="hidden" name="maSanPham" value="<%=item.getMaSanPham()%>"/>
                                <input type="number" name="soLuong" value="<%=item.getSoLuong()%>" 
                                       min="1" max="10" style="width:50px;"/>
                                <button type="submit">Cập nhật</button>
                            </form>
                        </td>
                        <td><%=formatTien.format(item.getThanhTien())%></td>
                        <td>
                            <form action="<%=request.getContextPath()%>/cart" method="post" style="display:inline;">
                                <input type="hidden" name="action" value="remove"/>
                                <input type="hidden" name="maSanPham" value="<%=item.getMaSanPham()%>"/>
                                <button type="submit">Xóa</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <div class="total">
                Tổng cộng: <strong>
                    <%=formatTien.format(session.getAttribute("tongTien"))%>
                </strong>
            </div>
            <div class="cart-actions">
                <button onclick="window.location.href='../product/page1.jsp'" class="continue-shopping">
                    Tiếp tục mua hàng
                </button>
                <form action="<%=request.getContextPath()%>/checkout" method="post" style="display:inline;">
                    <button type="submit" class="checkout">Thanh toán</button>
                </form>
            </div>
            <% } else { %>
                <p>Giỏ hàng của bạn đang trống.</p>
                <button onclick="window.location.href='../product/page1.jsp'" class="continue-shopping">
                    Quay lại mua hàng
                </button>
            <% } %>
        </section>
    </main>

    <footer>
        <div class="footer-top">    
            <div class="logo">Coffee Shop</div>  
            <p>one Stop | one Heart | one Cup</p>
        </div>
        <p class="copyright">© 2023 All Rights Reserved</p>
    </footer>
</body>
</html>