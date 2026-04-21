<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop — Immersive E‑Commerce Experience</title>
    
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background: #fefefe;
            color: #0b1a2e;
            scroll-behavior: smooth;
            line-height: 1.5;
        }

        /* Modern CSS Variables */
        :root {
            --primary-dark: #0f172a;
            --primary-deep: #1e293b;
            --accent-electric: #2dd4bf;
            --accent-glow: #14b8a6;
            --accent-gradient: linear-gradient(135deg, #2dd4bf 0%, #0f766e 100%);
            --surface-white: #ffffff;
            --surface-soft: #f8fafc;
            --gray-mid: #64748b;
            --gray-light: #e2e8f0;
            --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
            --shadow-lg: 0 20px 35px -12px rgba(0, 0, 0, 0.1);
            --shadow-hover: 0 30px 40px -20px rgba(0, 0, 0, 0.2);
            --radius-xl: 28px;
            --radius-2xl: 36px;
            --radius-card: 24px;
            --transition-smooth: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        /* Glassmorphism + modern touches */
        .glass-nav {
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(45, 212, 191, 0.18);
        }

        .container {
            max-width: 1320px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Header Style */
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 18px 0;
        }

        .brand {
            font-size: 28px;
            font-weight: 800;
            background: linear-gradient(135deg, #0f172a 30%, #2dd4bf 80%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
            font-family: 'Plus Jakarta Sans', sans-serif;
        }

        .brand span {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: #2dd4bf;
        }

        /* Navigation */
        .main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        .main-nav li a {
            padding: 8px 18px;
            font-weight: 600;
            border-radius: 40px;
            transition: var(--transition-smooth);
            color: #1e293b;
            background: transparent;
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        .main-nav li a:hover, .main-nav li a.active {
            background: var(--accent-electric);
            color: #0f172a;
            box-shadow: 0 4px 10px rgba(45, 212, 191, 0.2);
        }

        /* Search bar */
        .search-modern {
            background: var(--surface-soft);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--gray-light);
            transition: var(--transition-smooth);
            min-width: 260px;
        }
        .search-modern:focus-within {
            border-color: var(--accent-electric);
            box-shadow: 0 0 0 3px rgba(45,212,191,0.2);
            background: white;
        }
        .search-modern input {
            background: transparent;
            border: none;
            outline: none;
            width: 100%;
            font-size: 0.9rem;
        }

        /* Cart */
        .cart-modern {
            position: relative;
            background: var(--surface-soft);
            padding: 8px 14px;
            border-radius: 40px;
            transition: 0.2s;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: linear-gradient(135deg, #f43f5e, #e11d48);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Section — modern dynamic */
        .hero-modern {
            background: linear-gradient(125deg, #0a0f1f 0%, #0f172a 45%, #1e293b 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 24px;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(45,212,191,0.2) 0%, rgba(0,0,0,0) 70%);
            top: -80px;
            right: -80px;
            border-radius: 50%;
        }
        .hero-content {
            padding: 70px 0 80px;
            color: white;
            position: relative;
            z-index: 2;
        }
        .hero-modern h1 {
            font-size: 56px;
            font-weight: 800;
            letter-spacing: -0.02em;
            background: linear-gradient(to right, #ffffff, #a5f3fc);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 18px;
        }
        .btn-glow {
            background: var(--accent-gradient);
            border: none;
            padding: 14px 32px;
            border-radius: 48px;
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.25s;
            box-shadow: 0 8px 18px rgba(45,212,191,0.3);
            color: #0f172a;
        }
        .btn-outline-light {
            background: rgba(255,255,255,0.08);
            border: 1.5px solid rgba(255,255,255,0.3);
            backdrop-filter: blur(4px);
            padding: 14px 28px;
            border-radius: 48px;
            font-weight: 600;
            color: white;
        }

        /* Category Cards elevated */
        .cat-card-elevated {
            background: white;
            border-radius: 32px;
            padding: 28px 16px;
            text-align: center;
            transition: var(--transition-smooth);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
            cursor: pointer;
        }
        .cat-card-elevated:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: var(--accent-electric);
        }
        .cat-icon {
            font-size: 40px;
            background: linear-gradient(145deg, #e6fffa, #ccfbf1);
            width: 80px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 40px;
            margin: 0 auto 16px;
            color: #0f766e;
        }

        /* Product Grid */
        .product-card {
            background: white;
            border-radius: 32px;
            overflow: hidden;
            transition: var(--transition-smooth);
            box-shadow: var(--shadow-sm);
            border: 1px solid #f0f2f5;
        }
        .product-card:hover {
            transform: translateY(-10px) scale(1.01);
            box-shadow: var(--shadow-hover);
        }
        .product-img {
            height: 260px;
            width: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .product-card:hover .product-img {
            transform: scale(1.03);
        }
        .badge-new {
            position: absolute;
            background: #2dd4bf;
            color: #0f172a;
            font-weight: 800;
            padding: 6px 14px;
            border-radius: 60px;
            top: 16px;
            left: 16px;
            font-size: 12px;
        }
        .add-cart-btn {
            background: #0f172a;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 44px;
            font-weight: 700;
            transition: 0.2s;
            width: 100%;
            cursor: pointer;
        }
        .add-cart-btn:hover {
            background: #2dd4bf;
            color: #0f172a;
        }

        /* Flash sale card */
        .deal-super {
            background: linear-gradient(115deg, #ffffff 0%, #f0fdfa 100%);
            border-radius: 48px;
            overflow: hidden;
            display: flex;
            flex-wrap: wrap;
            box-shadow: 0 30px 40px -20px rgba(0,0,0,0.1);
        }
        .timer-modern .time-block {
            background: #0f172a;
            backdrop-filter: blur(8px);
            border-radius: 24px;
            padding: 12px 10px;
            min-width: 75px;
            text-align: center;
            color: white;
            font-weight: 800;
            font-size: 26px;
        }

        /* Testimonials carousel style */
        .testimonial-card {
            background: white;
            border-radius: 32px;
            padding: 28px;
            min-width: 320px;
            scroll-snap-align: start;
            box-shadow: var(--shadow-sm);
            transition: all 0.2s;
        }

        /* Newsletter Glass */
        .newsletter-glass {
            background: linear-gradient(125deg, #0f172a, #1e293b);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-glass input {
            background: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 16px 24px;
            border-radius: 60px;
            width: 320px;
            color: white;
        }

        footer {
            background: #fafcff;
            border-top: 1px solid #eef2f6;
        }

        @media (max-width: 1024px) {
            .main-nav { display: none; }
            .mobile-toggle { display: block; }
            .hero-modern h1 { font-size: 42px; }
            .products-grid { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 760px) {
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
            .hero-modern h1 { font-size: 32px; }
        }
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 26px;
            cursor: pointer;
        }
        .mobile-menu-drawer {
            background: white;
            border-top: 1px solid #e2e8f0;
            padding: 20px;
        }
        .grid-auto {
            display: grid;
            gap: 28px;
        }
        .categories-grid {
            grid-template-columns: repeat(6, 1fr);
        }
        .products-grid {
            grid-template-columns: repeat(4, 1fr);
        }
        @media (max-width: 1200px) {
            .categories-grid { grid-template-columns: repeat(3,1fr); }
            .products-grid { grid-template-columns: repeat(3,1fr); }
        }
        @media (max-width: 860px) {
            .categories-grid { grid-template-columns: repeat(2,1fr); }
            .products-grid { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 540px) {
            .categories-grid { grid-template-columns: 1fr; }
            .products-grid { grid-template-columns: 1fr; }
        }
        .btn-icon-sm {
            background: #f1f5f9;
            border-radius: 60px;
            padding: 10px 14px;
            transition: 0.2s;
        }
        .scroll-testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            padding-bottom: 8px;
        }
    </style>
</head>
<body>

<header class="glass-nav">
    <div class="container header-inner">
        <div style="display:flex; align-items:center; gap:20px;">
            <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#">NEXUS<span>SHOP</span></a>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#" id="categoryFilterLink"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Premium</a></li>
            </ul>
        </nav>
        <div style="display:flex; gap:18px; align-items:center;">
            <div class="search-modern">
                <i class="fas fa-search" style="color:#64748b"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="cart-modern" id="cartIcon">
                <i class="fas fa-bag-shopping fa-lg"></i>
                <span class="cart-count" id="cartCounter">0</span>
            </div>
        </div>
    </div>
    <div id="mobileDrawer" style="display: none;" class="mobile-menu-drawer">
        <nav style="display:flex; flex-direction:column; gap:14px;">
            <a href="#">🏠 Home</a>
            <a href="#">🔥 Trending</a>
            <a href="#deals">⚡ Deals</a>
            <a href="#">👤 Account</a>
        </nav>
    </div>
</header>

<main>
    <!-- Hero Section -->
    <section class="hero-modern">
        <div class="container hero-content">
            <span style="background: rgba(45,212,191,0.2); padding: 6px 16px; border-radius: 60px; font-size:0.8rem;">LIMITED EDITION</span>
            <h1>Beyond the ordinary.<br>Elevate your style.</h1>
            <p style="font-size: 1.2rem; max-width: 580px; margin: 20px 0 28px; opacity:0.9;">Discover curated drops, premium electronics & streetwear essentials — delivered worldwide.</p>
            <div style="display:flex; gap: 16px; flex-wrap:wrap;">
                <button class="btn-glow" id="shopNowHero"><i class="fas fa-store"></i> Shop Collection</button>
                <button class="btn-outline-light" id="exploreDealsHero"><i class="fas fa-gift"></i> Flash Sale</button>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="container" style="margin: 48px auto;">
        <div style="text-align:center; margin-bottom: 32px;">
            <h2 style="font-size: 32px; font-weight: 800;">Shop by Category</h2>
            <p style="color: var(--gray-mid);">Trending niches curated with passion</p>
        </div>
        <div class="grid-auto categories-grid" id="categoriesContainer"></div>
    </section>

    <!-- Products Grid -->
    <section class="container" style="margin: 56px auto;">
        <div style="display:flex; justify-content:space-between; align-items: baseline; flex-wrap:wrap; margin-bottom: 32px;">
            <div><h2 style="font-size: 32px; font-weight: 800;">✨ Bestsellers</h2><p>most loved this season</p></div>
            <div><i class="fas fa-arrow-right" style="background:#eef2ff; padding:12px; border-radius:60px;"></i></div>
        </div>
        <div class="grid-auto products-grid" id="productsContainer"></div>
    </section>

    <!-- Flash Sale Deal -->
    <section id="deals" class="container" style="margin: 60px auto;">
        <div class="deal-super">
            <div style="flex:1.2; padding: 40px;">
                <span style="background:#ffedd5; padding:6px 16px; border-radius:60px; font-weight:700;">⚡ FLASH SALE</span>
                <h2 style="font-size: 38px; margin: 18px 0 8px;">MacBook Air M2<br>Supercharged</h2>
                <p style="color:#334155;">Save 17% + free shipping — limited stock.</p>
                <div class="timer-modern" style="display: flex; gap: 14px; margin: 28px 0;">
                    <div class="time-block"><span id="dealDays">0</span><div style="font-size: 10px;">DAYS</div></div>
                    <div class="time-block"><span id="dealHours">00</span><div>HRS</div></div>
                    <div class="time-block"><span id="dealMinutes">00</span><div>MINS</div></div>
                    <div class="time-block"><span id="dealSeconds">00</span><div>SEC</div></div>
                </div>
                <div style="display:flex; gap: 14px; align-items:center; margin-bottom: 18px;">
                    <span style="font-size: 34px; font-weight:800;">$999</span>
                    <span style="text-decoration:line-through; color:#94a3b8;">$1,199</span>
                    <span style="background:#e11d48; color:white; padding:4px 14px; border-radius:60px;">-17%</span>
                </div>
                <button id="flashDealBtn" class="btn-glow" style="background:#0f172a; color:white; box-shadow:none;"><i class="fas fa-cart-shopping"></i> Add to Cart</button>
            </div>
            <div style="flex:0.9; background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover; min-height: 320px;"></div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="container" style="margin: 70px auto;">
        <div style="text-align:center;"><h2 style="font-size: 30px;">❤️ Trusted by creators</h2><p>Real feedback from our community</p></div>
        <div class="scroll-testimonials" id="testiList" style="margin-top: 32px;"></div>
    </section>

    <!-- Newsletter -->
    <section class="container" style="margin-bottom: 60px;">
        <div class="newsletter-glass">
            <i class="fas fa-envelope-open-text" style="font-size: 42px; margin-bottom: 12px;"></i>
            <h3 style="font-size: 28px;">Join the inner circle</h3>
            <p>Get early access, exclusive deals and style inspo — no spam.</p>
            <form id="newsModernForm" style="display: flex; flex-wrap: wrap; justify-content: center; gap: 12px; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="Your email address" required>
                <button type="submit" style="background:#2dd4bf; border:none; padding: 0 28px; border-radius:60px; font-weight:800; color:#0f172a;">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size:14px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="padding: 48px 0 28px; display:flex; justify-content:space-between; flex-wrap:wrap; gap:32px;">
        <div><h3 style="font-weight:800;">NEXUS<span style="color:#2dd4bf;">SHOP</span></h3><p style="color:#475569;">Modern e‑commerce for the new generation.</p></div>
        <div><span style="font-weight:700;">Company</span><br>About<br>Careers</div>
        <div><span style="font-weight:700;">Legal</span><br>Privacy<br>Terms</div>
    </div>
    <div style="text-align:center; border-top:1px solid #e2e8f0; padding: 20px;">© 2026 NexusShop — All rights reserved.</div>
</footer>

<script>
    // ---------- PRODUCT DATA ----------
    const CATEGORIES_DATA = [
        { id: 'elec', name: 'Electronics', icon: 'fa-laptop-code' },
        { id: 'fashion', name: 'Streetwear', icon: 'fa-tshirt' },
        { id: 'access', name: 'Luxury Acc', icon: 'fa-gem' },
        { id: 'foot', name: 'Sneakers', icon: 'fa-shoe-prints' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-microchip' }
    ];
    const PRODUCTS_LIST = [
        { id: 101, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1299, rating: 5, reviews: 234, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'elec', badge: 'New' },
        { id: 102, title: 'Sony WH-1000XM5', price: 349, oldPrice: 399, rating: 5, reviews: 567, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio', badge: '-13%' },
        { id: 103, title: 'Nike Air Max Pulse', price: 159, rating: 4, reviews: 89, img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', category: 'foot' },
        { id: 104, title: 'Essentials Hoodie', price: 89, oldPrice: 129, rating: 5, reviews: 412, img: 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80', category: 'fashion' },
        { id: 105, title: 'Samsung Galaxy Watch6', price: 299, rating: 4, reviews: 201, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 106, title: 'Ray-Ban Meta Smart', price: 329, rating: 4, reviews: 76, img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80', category: 'access' },
        { id: 107, title: 'MacBook Pro M3', price: 1899, oldPrice: 2099, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'elec', badge: 'Flagship' },
        { id: 108, title: 'Yeezy 350 V2', price: 240, rating: 4, reviews: 340, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'foot' }
    ];

    let cartCountGlobal = 0;
    const cartCounterSpan = document.getElementById('cartCounter');
    const productsGrid = document.getElementById('productsContainer');
    const categoriesContainer = document.getElementById('categoriesContainer');

    function updateCartUI() { cartCounterSpan.innerText = cartCountGlobal; }
    function addToCartGlobal(productId) {
        cartCountGlobal++;
        updateCartUI();
        const btn = document.querySelector(`.add-cart-btn[data-id='${productId}']`);
        if(btn) {
            const originalText = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            setTimeout(() => { btn.innerHTML = originalText; }, 900);
        }
        // mini toast feedback
    }

    function renderCategories() {
        categoriesContainer.innerHTML = CATEGORIES_DATA.map(cat => `
            <div class="cat-card-elevated" data-cat="${cat.id}">
                <div class="cat-icon"><i class="fas ${cat.icon} fa-2x"></i></div>
                <h4 style="margin-top: 8px;">${cat.name}</h4>
                <p style="font-size:13px; color:#64748b;">Explore now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card-elevated').forEach(el => {
            el.addEventListener('click', (e) => {
                const catId = el.dataset.cat;
                const filtered = PRODUCTS_LIST.filter(p => p.category === catId);
                renderProducts(filtered.length ? filtered : PRODUCTS_LIST);
                document.getElementById('globalSearch').value = '';
            });
        });
    }

    function renderProducts(productsArray = PRODUCTS_LIST) {
        productsGrid.innerHTML = productsArray.map(p => `
            <div class="product-card" style="position:relative;">
                ${p.badge ? `<div class="badge-new">${p.badge}</div>` : ''}
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div style="padding: 18px 16px 20px;">
                    <h3 style="font-size: 18px; font-weight:700;">${p.title}</h3>
                    <div style="display:flex; gap: 8px; margin: 8px 0;">
                        <span class="price" style="font-weight:800; font-size:22px;">$${p.price}</span>
                        ${p.oldPrice ? `<span style="text-decoration:line-through; color:#94a3b8;">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div style="color:#f5b042; margin-bottom: 14px;">${'★'.repeat(p.rating)} ${'☆'.repeat(5-p.rating)} <span style="color:#64748b;">(${p.reviews})</span></div>
                    <button class="add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartGlobal(id);
            });
        });
    }

    // search + filter
    const searchField = document.getElementById('globalSearch');
    function filterBySearch() {
        const query = searchField.value.trim().toLowerCase();
        if (!query) return renderProducts(PRODUCTS_LIST);
        const filtered = PRODUCTS_LIST.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
        renderProducts(filtered);
    }
    searchField.addEventListener('input', filterBySearch);

    // Deal Countdown
    function startDealTimer() {
        const targetTime = new Date().getTime() + (27 * 3600 * 1000); // 27h flash sale
        function update() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000*60*60*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        update();
        setInterval(update, 1000);
    }
    startDealTimer();

    // testimonials
    const testimonialsArr = [
        { name: 'Alicia Keys', text: 'The best customer experience and ultra fast shipping. Obsessed with my new sneakers!', rating: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Marcus Chen', text: 'Premium quality and packaging felt luxurious. 10/10 will return.', rating: 5, avatar: 'https://randomuser.me/api/portraits/men/32.jpg' }
    ];
    function loadTestimonials() {
        const container = document.getElementById('testiList');
        container.innerHTML = testimonialsArr.map(t => `
            <div class="testimonial-card" style="min-width:300px;">
                <div style="display:flex; gap: 4px; color:#facc15;">${'★'.repeat(t.rating)}</div>
                <p style="margin: 12px 0;">“${t.text}”</p>
                <div style="display:flex; align-items:center; gap:12px;"><img src="${t.avatar}" style="width:42px; height:42px; border-radius:50%; object-fit:cover;"><div><strong>${t.name}</strong><div>Verified ✅</div></div></div>
            </div>
        `).join('');
    }
    loadTestimonials();

    // newsletter
    const newsForm = document.getElementById('newsModernForm');
    const newsMsgDiv = document.getElementById('newsMsg');
    newsForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        if(email.includes('@') && email.includes('.')) {
            newsMsgDiv.innerHTML = '🎉 Thanks! You’re in — exclusive drops coming.';
            newsMsgDiv.style.color = '#ccfbf1';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsgDiv.innerHTML = '', 3000);
        } else {
            newsMsgDiv.innerHTML = '❌ Valid email required.';
            newsMsgDiv.style.color = '#fecdd3';
        }
    });

    // flash deal button
    document.getElementById('flashDealBtn').addEventListener('click', () => { cartCountGlobal++; updateCartUI(); alert('MacBook Air M2 added!'); });
    document.getElementById('shopNowHero').addEventListener('click', () => window.scrollTo({top: document.querySelector('.products-grid').offsetTop - 70, behavior: 'smooth'}));
    document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('deals').scrollIntoView({behavior: 'smooth'}));
    // mobile menu
    const toggleBtn = document.getElementById('mobileMenuToggle');
    const drawer = document.getElementById('mobileDrawer');
    toggleBtn.addEventListener('click', () => { drawer.style.display = drawer.style.display === 'none' ? 'flex' : 'none'; drawer.style.flexDirection = 'column'; });

    // init 
    renderCategories();
    renderProducts();
    updateCartUI();
    // Category filter link hint
    document.getElementById('categoryFilterLink')?.addEventListener('click', (e) => { e.preventDefault(); document.querySelector('.categories-grid').scrollIntoView({behavior: 'smooth'}); });
</script>
</body>
</html>
