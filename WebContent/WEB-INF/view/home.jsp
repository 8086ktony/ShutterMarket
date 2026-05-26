<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShutterMarket</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>

<nav class="navbar">
    <div class="nav-logo">Shutter<span>Market</span></div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/catalogo">Catalogo</a>
        <a href="#">Offerte</a>
    </div>
    <div class="nav-actions">
        <a href="${pageContext.request.contextPath}/login" class="btn-outline">Accedi</a>
        <a href="${pageContext.request.contextPath}/wishlist" class="btn-outline">♡</a>
        <a href="${pageContext.request.contextPath}/carrello" class="btn-outline">🛒</a>
    </div>
</nav>

<div class="searchbar-wrapper">
    <form action="${pageContext.request.contextPath}/catalogo" method="get" class="searchbar-form">
        <input type="text" name="q" placeholder="Cerca prodotti, brand, categorie..." class="searchbar-input">
        <button type="submit" class="searchbar-btn">Cerca</button>
    </form>
</div>

<div class="main-grid">

    <section class="hero">
        <span class="hero-tag">Attrezzatura fotografica professionale</span>
        <h1>Ogni scatto.<br>L'attrezzatura giusta.</h1>
        <p>Macchine fotografiche, obiettivi e accessori selezionati dai migliori brand mondiali.</p>
        <div class="hero-cta">
            <a href="${pageContext.request.contextPath}/catalogo" class="btn-lg">Esplora il catalogo</a>
            <a href="${pageContext.request.contextPath}/catalogo" class="btn-ghost">Sfoglia i brand</a>
        </div>
    </section>

    <section class="categorie-section">
        <p class="section-label">Categorie</p>
        <div class="categorie-grid">
            <a href="${pageContext.request.contextPath}/catalogo?categoria=1" class="categoria-card">
                <div class="categoria-icon">📷</div>
                <span>Fotocamere</span>
            </a>
            <a href="${pageContext.request.contextPath}/catalogo?categoria=2" class="categoria-card">
                <div class="categoria-icon">🔭</div>
                <span>Obiettivi</span>
            </a>
            <a href="${pageContext.request.contextPath}/catalogo?categoria=3" class="categoria-card">
                <div class="categoria-icon">💡</div>
                <span>Illuminazione</span>
            </a>
            <a href="${pageContext.request.contextPath}/catalogo?categoria=4" class="categoria-card">
                <div class="categoria-icon">🎒</div>
                <span>Accessori</span>
            </a>
            <a href="${pageContext.request.contextPath}/catalogo?categoria=5" class="categoria-card">
                <div class="categoria-icon">🖥️</div>
                <span>Monitor</span>
            </a>
            <a href="${pageContext.request.contextPath}/catalogo?categoria=6" class="categoria-card">
                <div class="categoria-icon">🔋</div>
                <span>Batterie</span>
            </a>
        </div>
    </section>

</div>

<script src="${pageContext.request.contextPath}/scripts/main.js"></script>
</body>
</html>