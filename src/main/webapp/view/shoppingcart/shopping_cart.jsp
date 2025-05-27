<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.CartServlet.CartItem"%>
<%@ page import="java.util.List"%>
<%@ page import="java.math.BigDecimal"%>
<%@ page import="java.text.NumberFormat"%>
<%@ page import="java.util.Locale"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Giỏ hàng của bạn</title>
<link rel="stylesheet" href="../../css/shoppingcart/style_shopping.css">
</head>
<body>
	<header>
		<a href="../index.jsp" class="logo"> Coffee Shop </a>
		<nav>
			<a href="../product/page1.jsp">Sản phẩm</a> <a href="#">Thanh
				toán</a>
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
					<%
					for (CartItem item : cart) {
					%>
					<tr>
						<td><%=item.getTenSanPham()%></td>
						<td><%=formatTien.format(item.getDonGia())%></td>
						<td><input type="number" name="soLuong"
							value="<%=item.getSoLuong()%>" min="1" style="width: 60px;"
							data-unit-price="<%=item.getDonGia()%>"
							data-product-id="<%=item.getMaSanPham()%>"
							onchange="updateCartItem(<%=item.getMaSanPham()%>, this.value, <%=item.getDonGia()%>)"
							oninput="updatePriceDisplay(<%=item.getMaSanPham()%>, this.value, <%=item.getDonGia()%>)" />
						</td>
						<td><span id="thanhTien_<%=item.getMaSanPham()%>"> <%=formatTien.format(item.getThanhTien())%>
						</span></td>
						<td>
							<form action="<%=request.getContextPath()%>/cart" method="post"
								style="display: inline;">
								<input type="hidden" name="action" value="remove" /> <input
									type="hidden" name="maSanPham" value="<%=item.getMaSanPham()%>" />
								<button type="submit"
									onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này?')">Xóa</button>
							</form>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<div class="total">
				Tổng cộng: <strong id="tongTien"> <%=formatTien.format(session.getAttribute("tongTien"))%>
				</strong>
			</div>

			<!-- Hidden form để gửi cập nhật lên server -->
			<form id="updateForm" action="<%=request.getContextPath()%>/cart"
				method="post" style="display: none;">
				<input type="hidden" name="action" value="update" /> <input
					type="hidden" name="maSanPham" id="updateMaSanPham" /> <input
					type="hidden" name="soLuong" id="updateSoLuong" />
			</form>

			<div class="cart-actions">
				<button onclick="window.location.href='../product/page1.jsp'"
					class="continue-shopping">Tiếp tục mua hàng</button>
				<%
				Object user = session.getAttribute("user");
				if (user != null) {
				%>
				<form action="<%=request.getContextPath()%>/checkout" method="post"
					style="display: inline;">
					<button type="submit" class="checkout">Thanh toán</button>
				</form>
				<%
				} else {
				%>
				<p>
					Bạn cần <a href="../xulyphanlogin/login.jsp">đăng nhập</a> để thanh
					toán.
				</p>
				<%
				}
				%>
			</div>
			<%
			} else {
			%>
			<p>Giỏ hàng của bạn đang trống.</p>
			<button onclick="window.location.href='../product/page1.jsp'"
				class="continue-shopping">Quay lại mua hàng</button>
			<%
			}
			%>
		</section>
	</main>

	<footer>
		<div class="footer-top">
			<div class="logo">Coffee Shop</div>
			<p>one Stop | one Heart | one Cup</p>
		</div>
		<p class="copyright">© 2023 All Rights Reserved</p>
	</footer>

	<script>
let updateTimeout = null;

// Hàm format tiền tệ VND
function formatVND(amount) {
    return new Intl.NumberFormat('vi-VN', {
        style: 'currency',
        currency: 'VND'
    }).format(amount);
}

// Hàm cập nhật hiển thị giá ngay lập tức khi người dùng nhập
function updatePriceDisplay(maSanPham, soLuong, donGia) {
    const thanhTien = soLuong * donGia;
    document.getElementById('thanhTien_' + maSanPham).textContent = formatVND(thanhTien);
    
    // Cập nhật tổng tiền
    updateTotalPrice();
}

// Hàm cập nhật tổng tiền
function updateTotalPrice() {
    let total = 0;
    const quantityInputs = document.querySelectorAll('input[name="soLuong"]');
    
    quantityInputs.forEach(function(input) {
        const quantity = parseInt(input.value) || 0;
        const unitPrice = parseFloat(input.dataset.unitPrice) || 0;
        total += quantity * unitPrice;
    });
    
    document.getElementById('tongTien').textContent = formatVND(total);
}

// GIẢI PHÁP TỐT NHẤT: Reload trang để đồng bộ session
function updateCartItem(maSanPham, soLuong, donGia) {
    // Xóa timeout cũ nếu có
    if (updateTimeout) {
        clearTimeout(updateTimeout);
    }
    
    // Tạo timeout mới
    updateTimeout = setTimeout(function() {
        // Kiểm tra số lượng hợp lệ
        if (soLuong < 1) {
            alert('Số lượng phải lớn hơn 0');
            const input = document.querySelector(`input[data-product-id="${maSanPham}"]`);
            input.value = 1;
            updatePriceDisplay(maSanPham, 1, donGia);
            return;
        }
        
        // Gửi form và reload trang để đồng bộ session
        document.getElementById('updateMaSanPham').value = maSanPham;
        document.getElementById('updateSoLuong').value = soLuong;
        document.getElementById('updateForm').submit();
        
    }, 800); // Delay 800ms
}

// Khởi tạo tổng tiền khi trang load
document.addEventListener('DOMContentLoaded', function() {
    updateTotalPrice();
});
</script>

</body>
</html>