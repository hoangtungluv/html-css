<%@ page import="java.util.*, model.Books" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Danh sách Sách</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { padding: 8px; text-align: left; border: 1px solid #ddd; }
        th { background-color: #f2f2f2; }
        .no-data { text-align: center; color: #666; padding: 20px; }
    </style>
</head>
<body>
    <h2>Danh sách Sách</h2>
    
    <%
        List<Books> list = (List<Books>) request.getAttribute("listBooks");
        if (list != null && !list.isEmpty()) {
    %>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên sách</th>
            <th>Tác giả</th>
            <th>Giá</th>
            <th>Ưu tiên</th>
            <th>Thành tiền</th>
        </tr>
        <%
            for (Books b : list) {
                double thanhTien = (b.getUutien() == 1) ? b.getGia() * 1.02 : b.getGia() * 1.05;
        %>
        <tr>
            <td><%= b.getIdsach() %></td>
            <td><%= b.getTensach() != null ? b.getTensach() : "" %></td>
            <td><%= b.getTacgia() != null ? b.getTacgia() : "" %></td>
            <td><%= String.format("%,.0f", b.getGia()) %> VND</td>
            <td><%= b.getUutien() %></td>
            <td><%= String.format("%,.0f", thanhTien) %> VND</td>
        </tr>
        <% } %>
    </table>
    <% } else { %>
        <div class="no-data">Không có dữ liệu sách từ cơ sở dữ liệu</div>
    <% } %>
</body>
</html>
