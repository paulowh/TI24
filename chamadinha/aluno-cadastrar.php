<?php
echo '<h1>Cadastro de Aluno</h1>';

echo '<pre>';
var_dump(
    $_POST
);

// POST -> GET -> FILE
$nomeFormulario      = $_POST['nome'];

$telFormulario       = $_POST['tel'];
$emailFormulario     = $_POST['email'];
$nascFormulario      = $_POST['nasc'];
$frequenteFormulario = $_POST['frequente'];
$imgFormulario       = $_POST['img'];
//um comentario top
$dsn = 'mysql:dbname=db_ti24;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$insert = 'INSERT INTO tb_alunos (nome) VALUE (:nome)';

$box = $banco->prepare($insert);

$box->execute([
    ':nome' => $nomeFormulario
]);

$id_aluno = $banco->lastInsertId();

echo $id_aluno;

// Aqui eu tenho a resolução da atividade de ontem....
$insert = 'INSERT INTO tb_info_alunos (telefone, email, nascimento, frequente, id_alunos, img) 
                VALUE (:telefone,:email,:nascimento,:frequente,:id_alunos,:img)';

$box = $banco->prepare($insert);

$box->execute([
    ':telefone'     => $telFormulario,
    ':email'        => $emailFormulario,
    ':nascimento'   => $nascFormulario,
    ':frequente'    => $frequenteFormulario,
    ':id_alunos'    => $id_aluno,
    ':img'          => $imgFormulario
]);
