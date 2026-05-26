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
            <a href="#">Brand</a>
            <a href="#">Offerte</a>
        </div>
        <div class="nav-actions">
            <a href="${pageContext.request.contextPath}/login" class="btn-outline">Accedi</a>
            <a href="${pageContext.request.contextPath}/registrazione" class="btn-primary">Registrati</a>
        </div>
    </nav>

    <section class="hero">
        <span class="hero-tag">Attrezzatura fotografica professionale</span>
        <h1>Ogni scatto.<br>L'attrezzatura giusta.</h1>
        <p>Macchine fotografiche, obiettivi e accessori selezionati dai migliori brand mondiali.</p>
        <div class="hero-cta">
            <a href="${pageContext.request.contextPath}/catalogo" class="btn-lg">Esplora il catalogo</a>
            <a href="#promozioni" class="btn-ghost">Scopri le offerte</a>
        </div>
    </section>

    <section class="promo-section" id="promozioni">
        <p class="section-label">Promozioni attive</p>
        <div class="promo-grid">
            <!-- In futuro popolato dinamicamente dal DB -->
            <div class="promo-card featured">
                <span class="promo-badge badge-blue">Sconto fisso</span>
                <div class="promo-code">WELCOME50</div>
                <p>50 € di sconto sul tuo primo ordine superiore a 300 €.</p>
                <small>Scade il 30 giugno 2026</small>
            </div>
            <div class="promo-card">
                <span class="promo-badge badge-amber">Percentuale</span>
                <div class="promo-code">SUMMER15</div>
                <p>15% di sconto su tutti gli obiettivi Mirrorless.</p>
                <small>Scade il 31 luglio 2026</small>
            </div>
        </div>
    </section>

    <script src="${pageContext.request.contextPath}/scripts/main.js"></script>
</body>
</html>