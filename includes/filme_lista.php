<section id="filmes-recomendados">
    <h2 class="titulo">Filmes</h2>
    <main class="container">
        <div class="row">

            <?php foreach ($dadosFilmes as $value) {
                include './includes/filme_card.php';
            } ?>

        </div>
    </main>
</section>