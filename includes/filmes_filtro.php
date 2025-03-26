<section id="filtroProdutos">
    <main class="container">
        <div class="row">
            <div class="col-2 col-lg-2 col-xs-12">

                <form action="#" method="get" class="filtro">
                    <?php foreach ($dadosGeneros as $value) { ?>
                        <label for="<?= $value['nome'] ?>" class="label">
                            <input
                                id="<?= $value['nome'] ?>"
                                name="<?= $value['nome'] ?>"
                                type="checkbox" <?= isset($_GET[$value['nome']]) ? 'checked' : '' ?>>
                            <div class="checkmark"></div>
                            <?= $value['nome'] ?>
                        </label>
                    <?php } ?>
                    <input type="submit" value="Filtrar" class="btn">
                </form>

            </div>
            <div class="col-10 col-lg-10 col-xs-12">
                <?php $qntd = 4;
                include './includes/filmes_listar.php'; ?>
            </div>
        </div>
    </main>
</section>