<?php foreach ($resultadoConsultaFilmes as $value) { ?>
    <div class="row desc-filme">
        <div class="col-12 col-lg-2 col-sm-12 col-md-12 text-center">
            <img src="./assets/img/poster/<?= $value['poster'] ?>" alt="" class="desc-foto">
        </div>

        <div class="col-12 col-lg-8 col-sm-12 col-md-12 mt-3">
            <h3 class="title"><?= $value['nome'] ?></h3>
            <p class="desc-descricao">
                <?= $value['descricao'] ?>
            </p>
        </div>

        <div class="col-12 col-lg-2 col-sm-12 col-md-12 desc-btn p-3">
            <a href="#" class="btn btn-primary">
                <i class="bi bi-pencil-square"></i>
                Editar
            </a>
            <a href="#" class="btn btn-danger">
                <i class="bi bi-trash-fill"></i>
                Excluir
            </a>
        </div>
    </div>
<?php } ?>