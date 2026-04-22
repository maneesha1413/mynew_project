<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
    --bg: #0f172a;
    --primary: #e2e8f0;
    --accent: #38bdf8;
    --accent2: #818cf8;
    --muted: #94a3b8;
    --card: #1e293b;
    --surface: #111827;
    --success: #22c55e;
    --radius: 16px;
}

* {
    box-sizing: border-box;
    transition: all .25s ease;
}

body {
    margin:0;
    font-family: Inter, sans-serif;
    background: var(--bg);
    color: var(--primary);
}

/* HEADER */
header {
    position: sticky;
    top:0;
    background: rgba(15,23,42,0.7);
    backdrop-filter: blur(12px);
    padding:12px 20px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    z-index:10;
}

.brand {
    font-family:Poppins;
    font-weight:700;
    font-size:20px;
}
.brand span {color:var(--accent); text-shadow:0 0 10px var(--accent);}

.search {
    background: var(--surface);
    padding:8px 12px;
    border-radius:999px;
    display:flex;
}
.search input {
    background:transparent;
    border:0;
    outline:none;
    color:white;
}

/* HERO */
.hero {
    text-align:center;
    padding:80px 20px;
    background:
    linear-gradient(rgba(2,6,23,.8), rgba(2,6,23,.9)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
}

.hero h1 {font-size:42px;}
.btn {
    padding:10px 20px;
    border-radius:999px;
    border:none;
    cursor:pointer;
}
.btn-primary {
    background: linear-gradient(135deg,var(--accent),var(--accent2));
    color:white;
    box-shadow:0 10px 30px rgba(56,189,248,.4);
}

/* GRID */
.grid {
    display:grid;
    gap:20px;
    padding:40px;
}

.categories {grid-template-columns: repeat(auto-fit,minmax(150px,1fr));}
.products {grid-template-columns: repeat(auto-fit,minmax(220px,1fr));}

/* CARDS */
.cat-card, .product {
    background: linear-gradient(145deg,#1e293b,#020617);
    padding:20px;
    border-radius:var(--radius);
    border:1px solid rgba(255,255,255,0.05);
    text-align:center;
}

.cat-card:hover, .product:hover {
    transform: translateY(-8px);
    box-shadow:0 20px 50px rgba(0,0,0,.5);
}

.product img {
    width:100%;
    height:180px;
    object-fit:cover;
    border-radius:12px;
}
.product:hover img {transform:scale(1.08);}

.add-btn {
    margin-top:10px;
    width:100%;
    padding:10px;
    border-radius:8px;
    border:none;
    cursor:pointer;
    background: linear-gradient(135deg,#22c55e,#4ade80);
}

/* DEAL */
.deal {
    margin:40px;
    padding:20px;
    border-radius:var(--radius);
    background: linear-gradient(145deg,#1e293b,#020617);
    display:flex;
    gap:20px;
}
.deal img {width:50%; border-radius:12px;}

/* FOOTER */
footer {
    text-align:center;
    padding:20px;
    color:var(--muted);
}
</style>
</head>

<body>

<header>
    <div class="brand">Nexus<span>Shop</span></div>
    <div class="search">
        <input id="searchInput" placeholder="Search..." />
    </div>
</header>

<section class="hero">
    <h1>Premium Shopping Experience</h1>
    <button class="btn btn-primary">Shop Now</button>
</section>

<section>
    <div class="grid categories" id="categories"></div>
</section>

<section>
    <div class="grid products" id="products"></div>
</section>

<section class="deal">
    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80">
    <div>
        <h2>MacBook Air M2</h2>
        <p>Limited time deal</p>
        <button class="btn btn-primary">Buy Now</button>
    </div>
</section>

<footer>
© 2026 NexusShop
</footer>

<script>
const categories = ["Phones","Laptops","Clothing","Shoes"];
const products = [
{title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"},
{title:"Nike Shoes",price:199,img:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80"}
];

const catEl=document.getElementById("categories");
categories.forEach(c=>{
    catEl.innerHTML+=`<div class="cat-card">${c}</div>`;
});

const prodEl=document.getElementById("products");
products.forEach(p=>{
    prodEl.innerHTML+=`
    <div class="product">
        <img src="${p.img}">
        <h4>${p.title}</h4>
        <p>$${p.price}</p>
        <button class="add-btn">Add to Cart</button>
    </div>`;
});
</script>

</body>
</html>
