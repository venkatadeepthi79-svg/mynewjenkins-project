<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Nebula Mart | Futuristic E‑Commerce</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-deep: #0b0f1c;
            --bg-elevated: #12162a;
            --bg-card: #1a1f35;
            --surface-glow: rgba(0, 212, 255, 0.08);
            --primary-glow: #00d4ff;
            --neon-cyan: #00f0ff;
            --neon-purple: #b967ff;
            --text-primary: #f0f3fa;
            --text-secondary: #a9b4d4;
            --accent-pink: #ff5e7e;
            --success: #2ad4af;
            --border-dim: rgba(255, 255, 255, 0.06);
            --shadow-neon: 0 10px 30px -8px rgba(0, 212, 255, 0.2);
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
            --transition-smooth: all 0.35s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-deep);
            color: var(--text-primary);
            line-height: 1.5;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        /* animated gradient background */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 10% 20%, rgba(18, 22, 42, 0.9), rgba(11, 15, 28, 1));
            z-index: -2;
        }

        ::-webkit-scrollbar {
            width: 6px;
        }

        ::-webkit-scrollbar-track {
            background: var(--bg-elevated);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--primary-glow);
            border-radius: 8px;
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* glassmorphic sticky header */
        .glass-header {
            background: rgba(18, 22, 42, 0.75);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-dim);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(120deg, #fff, var(--neon-cyan));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .logo span {
            background: linear-gradient(135deg, var(--neon-purple), var(--neon-cyan));
            -webkit-background-clip: text;
            background-clip: text;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-secondary);
            font-weight: 500;
            transition: var(--transition-smooth);
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            color: var(--neon-cyan);
            text-shadow: 0 0 5px rgba(0, 212, 255, 0.5);
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--bg-card);
            border-radius: 60px;
            padding: 6px 16px;
            border: 1px solid var(--border-dim);
            transition: all 0.2s;
        }

        .search-wrapper:focus-within {
            border-color: var(--primary-glow);
            box-shadow: 0 0 12px rgba(0, 212, 255, 0.2);
        }

        .search-wrapper input {
            background: transparent;
            border: none;
            padding: 10px 6px;
            color: white;
            font-size: 0.9rem;
            width: 200px;
            outline: none;
        }

        .search-wrapper button {
            background: transparent;
            border: none;
            color: var(--neon-cyan);
            cursor: pointer;
            font-size: 1rem;
        }

        .action-icons {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .cart-icon {
            position: relative;
            cursor: pointer;
            font-size: 1.4rem;
            transition: var(--transition-smooth);
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -12px;
            background: var(--accent-pink);
            color: white;
            font-size: 0.7rem;
            font-weight: bold;
            border-radius: 30px;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 6px #ff5e7e;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            color: var(--text-primary);
            cursor: pointer;
        }

        /* HERO SECTION futuristic */
        .hero-futuristic {
            margin: 32px 0 48px;
            border-radius: var(--radius-xl);
            background: linear-gradient(125deg, rgba(26, 31, 53, 0.9), rgba(11, 15, 28, 0.95)), url('https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=2000&q=80');
            background-size: cover;
            background-blend-mode: overlay;
            padding: 70px 48px;
            border: 1px solid rgba(0, 212, 255, 0.2);
            box-shadow: var(--shadow-neon);
        }

        .hero-futuristic h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.3rem;
            font-weight: 700;
            background: linear-gradient(130deg, #FFFFFF, var(--neon-cyan));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            max-width: 70%;
        }

        .hero-futuristic p {
            color: var(--text-secondary);
            font-size: 1.1rem;
            margin: 20px 0 28px;
            max-width: 55%;
        }

        .btn-group {
            display: flex;
            gap: 18px;
            flex-wrap: wrap;
        }

        .btn-primary-neon {
            background: linear-gradient(95deg, var(--neon-cyan), #0099cc);
            border: none;
            color: #0a0e1c;
            font-weight: 700;
            padding: 12px 28px;
            border-radius: 40px;
            font-family: inherit;
            cursor: pointer;
            transition: 0.2s;
            font-size: 0.9rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(0, 212, 255, 0.6);
            color: var(--neon-cyan);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        /* section titles */
        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2rem;
            margin-bottom: 28px;
            letter-spacing: -0.02em;
            display: flex;
            align-items: baseline;
            gap: 12px;
        }

        .section-title i {
            color: var(--neon-cyan);
            font-size: 1.8rem;
        }

        /* category cards */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin: 32px 0 24px;
        }

        .category-card {
            background: var(--bg-card);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-lg);
            padding: 24px 16px;
            text-align: center;
            border: 1px solid var(--border-dim);
            transition: var(--transition-smooth);
            cursor: pointer;
        }

        .category-card:hover {
            transform: translateY(-6px);
            border-color: var(--neon-cyan);
            box-shadow: 0 15px 35px rgba(0, 212, 255, 0.15);
        }

        .cat-icon {
            font-size: 2.5rem;
            color: var(--neon-cyan);
            margin-bottom: 14px;
        }

        /* product grid : glassmorph */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
            margin: 30px 0 20px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-lg);
            overflow: hidden;
            border: 1px solid var(--border-dim);
            transition: var(--transition-smooth);
            backdrop-filter: blur(2px);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary-glow);
            box-shadow: 0 20px 32px -12px rgba(0, 212, 255, 0.25);
        }

        .product-img {
            width: 100%;
            height: 230px;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-info {
            padding: 18px;
        }

        .product-title {
            font-weight: 600;
            font-size: 1.1rem;
        }

        .price-tag {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 12px 0;
        }

        .current-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--neon-cyan);
        }

        .old-price {
            text-decoration: line-through;
            color: var(--text-secondary);
            font-size: 0.85rem;
        }

        .rating {
            color: gold;
            font-size: 0.8rem;
        }

        .add-to-cart {
            width: 100%;
            background: rgba(0, 212, 255, 0.1);
            border: 1px solid rgba(0, 212, 255, 0.4);
            padding: 12px;
            border-radius: 40px;
            color: var(--neon-cyan);
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
        }

        .add-to-cart:hover {
            background: var(--neon-cyan);
            color: #0b0f1c;
            border-color: transparent;
        }

        /* flash sale */
        .flash-sale {
            background: linear-gradient(115deg, #12162a 0%, #0f1327 100%);
            border-radius: var(--radius-xl);
            padding: 40px;
            margin: 60px 0;
            border: 1px solid var(--border-dim);
            display: flex;
            flex-wrap: wrap;
            gap: 32px;
            align-items: center;
        }

        .sale-content {
            flex: 1;
        }

        .timer-group {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }

        .time-unit {
            background: #090c1a;
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            border: 1px solid var(--border-dim);
        }

        .time-number {
            font-size: 1.7rem;
            font-weight: 800;
            color: var(--neon-cyan);
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding-bottom: 12px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            background: var(--bg-card);
            padding: 24px;
            border-radius: var(--radius-lg);
            min-width: 300px;
            border: 1px solid var(--border-dim);
        }

        /* newsletter */
        .newsletter-modern {
            background: linear-gradient(95deg, #0f1327, #12162a);
            border-radius: var(--radius-xl);
            padding: 48px 36px;
            text-align: center;
            margin: 50px 0;
            border: 1px solid rgba(0, 212, 255, 0.2);
        }

        .newsletter-modern input {
            background: var(--bg-deep);
            border: 1px solid var(--border-dim);
            padding: 14px 22px;
            border-radius: 60px;
            width: 280px;
            color: white;
            outline: none;
        }

        /* cart sidebar */
        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -420px;
            width: 400px;
            height: 100vh;
            background: rgba(18, 22, 42, 0.98);
            backdrop-filter: blur(20px);
            z-index: 1000;
            border-left: 1px solid var(--border-dim);
            padding: 20px;
            transition: right 0.3s ease;
            display: flex;
            flex-direction: column;
            box-shadow: -5px 0 30px rgba(0,0,0,0.5);
        }

        .cart-sidebar.open {
            right: 0;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            font-size: 1.4rem;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--border-dim);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            margin: 20px 0;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            margin: 12px 0;
            padding: 10px;
            background: rgba(255,255,255,0.03);
            border-radius: 14px;
        }

        .cart-total {
            font-weight: 700;
            font-size: 1.3rem;
            padding: 12px 0;
        }

        .close-cart {
            cursor: pointer;
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
        }

        footer {
            border-top: 1px solid var(--border-dim);
            padding: 48px 0 28px;
            margin-top: 40px;
            color: var(--text-secondary);
        }

        @media (max-width: 900px) {
            .nav-links {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .hero-futuristic h1 {
                font-size: 2rem;
                max-width: 100%;
            }

            .hero-futuristic p {
                max-width: 100%;
            }

            .cart-sidebar {
                width: 100%;
                right: -100%;
            }
        }
    </style>
</head>
<body>

<div class="glass-header">
    <div class="container header-flex">
        <div class="logo">NEBULA<span>MART</span></div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#">Explore</a>
            <a href="#">Drops</a>
            <a href="#">Community</a>
        </div>
        <div class="search-wrapper">
            <input type="text" id="globalSearch" placeholder="Search products...">
            <button id="searchTrigger"><i class="fas fa-search"></i></button>
        </div>
        <div class="action-icons">
            <i class="far fa-heart" style="cursor:pointer;"></i>
            <div class="cart-icon" id="cartIcon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCounter">0</span>
            </div>
            <button class="mobile-menu-btn" id="mobileNavBtn"><i class="fas fa-bars"></i></button>
        </div>
    </div>
</div>

<main class="container">
    <!-- Hero -->
    <div class="hero-futuristic">
        <h1>Edge of Tomorrow <br>Tech & Style</h1>
        <p>Step into the future with AI-curated collections. Limited editions, cosmic drops, and next‑gen accessories.</p>
        <div class="btn-group">
            <button class="btn-primary-neon" id="shopNowBtn"><i class="fas fa-bolt"></i> Shop Now</button>
            <button class="btn-outline-light" id="exploreDealsBtn"><i class="fas fa-gem"></i> Discover Drops</button>
        </div>
    </div>

    <!-- Categories section -->
    <div class="section-title"><i class="fas fa-cube"></i> Curated Realms</div>
    <div class="category-grid" id="categoryContainer"></div>

    <!-- Trending Products -->
    <div class="section-title"><i class="fas fa-fire-flame"></i> Hyperflux Picks</div>
    <div class="product-grid" id="productContainer"></div>

    <!-- Flash Sale -->
    <div class="flash-sale" id="dealSection">
        <div class="sale-content">
            <h2 style="font-size: 1.9rem;"><i class="fas fa-stopwatch"></i> Flash Nebula</h2>
            <p>Quantum Deal: AI Headphones X2 · 72% off</p>
            <div class="timer-group" id="countdownTimer">
                <div class="time-unit"><div class="time-number" id="days">00</div><span>Days</span></div>
                <div class="time-unit"><div class="time-number" id="hours">00</div><span>Hrs</span></div>
                <div class="time-unit"><div class="time-number" id="minutes">00</div><span>Min</span></div>
                <div class="time-unit"><div class="time-number" id="seconds">00</div><span>Sec</span></div>
            </div>
            <button class="btn-primary-neon" id="flashDealBtn" style="margin-top: 20px;"><i class="fas fa-cart-shopping"></i> Add Deal to Cart — $129</button>
        </div>
        <div style="flex:0.8; text-align:center;"><i class="fas fa-head-side-vr" style="font-size: 140px; opacity:0.7; color:var(--neon-cyan);"></i></div>
    </div>

    <!-- Testimonials -->
    <div class="section-title"><i class="fas fa-comment-dots"></i> Galactic Voices</div>
    <div class="testimonial-scroll">
        <div class="testimonial-card">⭐️⭐️⭐️⭐️⭐️ "Mind-blowing shipping and futuristic packaging — obsessed!"<br/>— Zara C.</div>
        <div class="testimonial-card">⭐️⭐️⭐️⭐️⭐️ "The AI recommendations are eerily perfect. Will rebuy."<br/>— Marcus V.</div>
        <div class="testimonial-card">⭐️⭐️⭐️⭐️ "Great support, next-level UI experience."<br/>— Lin Wei</div>
    </div>

    <!-- Newsletter Modern -->
    <div class="newsletter-modern">
        <h3 style="font-family: 'Space Grotesk';">Stellar Access</h3>
        <p>Subscribe for early access, private drops & neon deals</p>
        <div style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; margin-top: 18px;">
            <input type="email" id="newsEmail" placeholder="your@cosmos.com">
            <button class="btn-primary-neon" id="subNewsBtn">Subscribe →</button>
        </div>
        <div id="newsMsg" style="margin-top: 14px; font-size: 0.8rem;"></div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 20px;">
        <div>© 2026 NebulaMart — cyber commerce</div>
        <div><i class="fab fa-twitter"></i> <i class="fab fa-discord"></i> <i class="fab fa-instagram"></i></div>
    </div>
</footer>

<!-- Cart Sidebar -->
<div id="cartSidebar" class="cart-sidebar">
    <div class="cart-header">
        <span><i class="fas fa-bag-shopping"></i> Nebula Cart</span>
        <button class="close-cart" id="closeCartBtn">&times;</button>
    </div>
    <div class="cart-items" id="cartItemsList">
        <div style="text-align:center; color:gray;">Your cart is cosmic void</div>
    </div>
    <div class="cart-total" id="cartTotalDisplay">Total: $0</div>
    <button class="btn-primary-neon" style="width:100%;" id="checkoutMock">Checkout →</button>
</div>

<script>
    // ---------- DATA ----------
    const categories = [
        { id: 'wear', name: 'Cyberwear', icon: 'fa-robot' },
        { id: 'audio', name: 'Neo Audio', icon: 'fa-headphones' },
        { id: 'gear', name: 'Quantum Gear', icon: 'fa-microchip' },
        { id: 'access', name: 'Holo Acc', icon: 'fa-glasses' }
    ];

    const products = [
        { id: 1, name: 'Phantom X1 Glasses', price: 249, oldPrice: 399, rating: 4.8, img: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80', category: 'access' },
        { id: 2, name: 'Neural Headband', price: 189, oldPrice: 299, rating: 4.5, img: 'https://images.unsplash.com/photo-1581091226033-d5c48150dbaa?auto=format&fit=crop&w=600&q=80', category: 'gear' },
        { id: 3, name: 'Orbit Speaker', price: 99, oldPrice: 149, rating: 4.7, img: 'https://images.unsplash.com/photo-1563330232-57114bb0823c?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 4, name: 'Cyber Jacket v2', price: 359, oldPrice: 520, rating: 4.9, img: 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=600&q=80', category: 'wear' },
        { id: 5, name: 'Holo Band', price: 79, rating: 4.3, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'access' },
        { id: 6, name: 'Aether Pods', price: 149, oldPrice: 199, rating: 4.6, img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80', category: 'audio' }
    ];

    let cart = [];
    let cartCount = 0;

    // DOM elements
    const categoryContainer = document.getElementById('categoryContainer');
    const productContainer = document.getElementById('productContainer');
    const cartCounterSpan = document.getElementById('cartCounter');
    const cartSidebar = document.getElementById('cartSidebar');
    const cartItemsDiv = document.getElementById('cartItemsList');
    const cartTotalSpan = document.getElementById('cartTotalDisplay');
    const searchInput = document.getElementById('globalSearch');
    const searchBtn = document.getElementById('searchTrigger');

    // Helper: update cart UI & count
    function updateCartUI() {
        cartCounterSpan.innerText = cart.reduce((sum, i) => sum + i.quantity, 0);
        if (!cartItemsDiv) return;
        if (cart.length === 0) {
            cartItemsDiv.innerHTML = '<div style="text-align:center; color:gray;">Your cart is cosmic void</div>';
            cartTotalSpan.innerText = `Total: $0`;
            return;
        }
        let html = '';
        let total = 0;
        cart.forEach(item => {
            total += item.price * item.quantity;
            html += `<div class="cart-item">
                        <div><strong>${item.name}</strong> x${item.quantity}</div>
                        <div>$${(item.price * item.quantity).toFixed(2)} 
                        <button class="remove-item" data-id="${item.id}" style="background:none; border:none; color:#ff5e7e; margin-left:10px; cursor:pointer;"><i class="fas fa-trash-alt"></i></button>
                        </div>
                    </div>`;
        });
        cartItemsDiv.innerHTML = html;
        cartTotalSpan.innerText = `Total: $${total.toFixed(2)}`;
        document.querySelectorAll('.remove-item').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                removeFromCart(id);
            });
        });
    }

    function addToCart(product) {
        const existing = cart.find(i => i.id === product.id);
        if (existing) existing.quantity++;
        else cart.push({ ...product, quantity: 1 });
        updateCartUI();
        // animation feedback 
        const btn = document.querySelector(`.add-to-cart[data-pid="${product.id}"]`);
        if (btn) {
            const origText = btn.innerText;
            btn.innerText = '✓ Added';
            setTimeout(() => btn.innerText = origText, 800);
        }
    }

    function removeFromCart(id) {
        const index = cart.findIndex(i => i.id === id);
        if (index !== -1) {
            cart[index].quantity--;
            if (cart[index].quantity === 0) cart.splice(index, 1);
            updateCartUI();
        }
    }

    function renderCategories() {
        categoryContainer.innerHTML = categories.map(cat => `
            <div class="category-card" data-cat="${cat.id}">
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', (e) => {
                const filterCat = card.dataset.cat;
                const filtered = products.filter(p => p.category === filterCat);
                renderProducts(filtered);
                searchInput.value = `category:${filterCat}`;
            });
        });
    }

    function renderProducts(productList = products) {
        productContainer.innerHTML = productList.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.name}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${p.name}</div>
                    <div class="price-tag">
                        <span class="current-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))} ${p.rating}</div>
                    <button class="add-to-cart" data-pid="${p.id}"><i class="fas fa-cart-plus"></i> Add to bag</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            const pid = parseInt(btn.dataset.pid);
            const product = products.find(p => p.id === pid);
            btn.addEventListener('click', () => addToCart(product));
        });
    }

    function filterProductsBySearch(query) {
        const term = query.toLowerCase().trim();
        if (!term) renderProducts(products);
        else {
            const filtered = products.filter(p => p.name.toLowerCase().includes(term) || p.category.includes(term));
            renderProducts(filtered);
        }
    }

    // countdown for flash deal (set 2 days timer)
    function startCountdown() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 18);
        function tick() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('days').innerText = '00'; document.getElementById('hours').innerText = '00';
                document.getElementById('minutes').innerText = '00'; document.getElementById('seconds').innerText = '00';
                return;
            }
            const d = Math.floor(diff / (1000 * 60 * 60 * 24));
            const h = Math.floor((diff % (86400000)) / 3600000);
            const m = Math.floor((diff % 3600000) / 60000);
            const s = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = d < 10 ? '0' + d : d;
            document.getElementById('hours').innerText = h < 10 ? '0' + h : h;
            document.getElementById('minutes').innerText = m < 10 ? '0' + m : m;
            document.getElementById('seconds').innerText = s < 10 ? '0' + s : s;
        }
        tick();
        setInterval(tick, 1000);
    }
    startCountdown();

    // Flash deal product 
    const flashProduct = { id: 99, name: 'Aether XR Headphones', price: 129, oldPrice: 460, rating: 4.9, img: '', category: 'audio' };
    document.getElementById('flashDealBtn')?.addEventListener('click', () => {
        addToCart(flashProduct);
    });

    // cart sidebar events
    document.getElementById('cartIcon')?.addEventListener('click', () => cartSidebar.classList.add('open'));
    document.getElementById('closeCartBtn')?.addEventListener('click', () => cartSidebar.classList.remove('open'));
    document.getElementById('checkoutMock')?.addEventListener('click', () => { alert('✨ Checkout demo: your order would be processed. Total: ' + cart.reduce((s,i)=>s+(i.price*i.quantity),0)); });

    // newsletter
    document.getElementById('subNewsBtn')?.addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
            msgDiv.innerHTML = '<span style="color:#ff9f9f;">🌀 Enter valid email</span>';
        } else {
            msgDiv.innerHTML = '<span style="color:#2ad4af;">✔️ Subscribed to Nebula frequency!</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 2000);
        }
    });

    // search & buttons
    searchBtn.addEventListener('click', () => filterProductsBySearch(searchInput.value));
    searchInput.addEventListener('keyup', (e) => { if (e.key === 'Enter') filterProductsBySearch(searchInput.value); });
    document.getElementById('shopNowBtn')?.addEventListener('click', () => document.getElementById('productContainer')?.scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsBtn')?.addEventListener('click', () => document.getElementById('dealSection')?.scrollIntoView({ behavior: 'smooth' }));

    // mobile nav dummy placeholder (simple toggle)
    document.getElementById('mobileNavBtn')?.addEventListener('click', () => {
        alert('✨ Navigation: Home | Explore | Drops | Community — full immersive UI');
    });

    // initial render
    renderCategories();
    renderProducts();
    updateCartUI();
</script>
</body>
</html>
