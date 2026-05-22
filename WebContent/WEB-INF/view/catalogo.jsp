<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Prodotto, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Catalogo — ShutterMarket</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <h1>Catalogo</h1>

    <%
        List<Prodotto> prodotti = (List<Prodotto>) request.getAttribute("prodotti");
        for (Prodotto p : prodotti) {
    %>
        <div class="prodotto">
            <h2><%= p.getNome() %></h2>
            <p>€ <%= p.getPrezzo() %></p>
        </div>
    <%
        }
    %>

    <script src="${pageContext.request.contextPath}/scripts/main.js"></script>
</body>
</html>