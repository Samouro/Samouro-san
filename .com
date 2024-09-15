<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Catálogo de Donuts</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #faf3e0;
        }
        header {
            background: #d2691e;
            color: #fff;
            padding: 20px 0;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
            box-shadow: 0 4px 2px -2px gray;
        }
        header h1 {
            margin: 0;
            text-align: center;
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
        nav {
            display: flex;
            justify-content: center;
            background: #ffb84d;
            padding: 10px 0;
        }
        nav a {
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
        }
        nav a:hover {
            background: #e68a00;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 100px 20px 20px;
        }
        section {
            padding: 20px;
            background: #fff;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .gallery img {
            width: 100%;
            max-width: 280px;
            margin: 10px;
            border-radius: 10px;
            transition: transform 0.3s;
        }
        .gallery img:hover {
            transform: scale(1.05);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        form input, form textarea {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        form button {
            padding: 10px;
            border: none;
            background: #d2691e;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }
        form button:hover {
            background: #a0522d;
        }
        footer {
            background: #d2691e;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Catálogo de Donuts</h1>
    </header>
    <nav>
        <a href="#home">Início</a>
        <a href="#about">Sobre</a>
        <a href="#gallery">Sabores</a>
        <a href="#contact">Contato</a>
    </nav>
    <div class="container">
        <section id="home">
            <h2>Bem-vindo ao Catálogo de Donuts!</h2>
            <p>Descubra os melhores sabores de donuts artesanais. Feitos com amor e ingredientes selecionados especialmente para você!</p>
        </section>
        <section id="about">
            <h2>Sobre Nós</h2>
            <p>Somos uma confeitaria especializada em donuts gourmet. Cada donut é preparado com carinho e criatividade, oferecendo uma experiência única de sabor.</p>
        </section>
        <section id="gallery">
            <h2>Nossos Sabores</h2>
            <div class="gallery">
                <img src="S1.jpg" alt="Donut de Chocolate">
                <img src="S2.jpg" alt="Donut de Morango">
                <img src="S3.jpg" alt="Donut de Limão">
                <img src="S4.jpeg" alt="Donut de Doce de Leite">
            </div>
        </section>
        <section id="contact">
            <h2>Entre em Contato</h2>
            <form>
                <input type="text" placeholder="Seu Nome" required>
                <input type="email" placeholder="Seu Email" required>
                <textarea rows="5" placeholder="Sua Mensagem" required></textarea>
                <button type="submit">Enviar Mensagem</button>
            </form>
        </section>
    </div>
    <footer>
        <p>&copy; 2024 Catálogo de Donuts. Todos os direitos reservados.</p>
    </footer>
</body>
</html>
