<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineBox</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/carrossel.css">
    <link rel="stylesheet" href="./assets/css/filmes.css">
</head>

<body>
    <header>
        <nav>
            <a href="#" class="logo">
                <h1>Cine Box</h1>
            </a>
            <ul class="menu">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Filmes</a></li>
                <li><a href="#">Sobre</a></li>
            </ul>

            <ul class="menu-icones">
                <li><a href="#"><i class="bi bi-search"></i></a></li>
                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                <li><a href="#"><i class="bi bi-cart"></i></a></li>
                <li><a href="#"><i class="bi bi-person-circle"></i></a></li>
            </ul>

            <!-- menu suspenso/hambúrguer para os mais íntimos -->
            <button class="menu-oculto" onclick="javascript:abrirNav()">
                <i class="bi bi-list"></i>
            </button>

            <div id="offcanvas" class="menu-oculto">
                <button class="fechar" onclick="javascript:fecharNav()">
                    <i class="bi bi-x"></i>
                </button>
                <a href="index.html">Inicio</a>
                <a href="#">Filmes</a>
                <a href="#">Sobre</a>
            </div>
        </nav>
    </header>