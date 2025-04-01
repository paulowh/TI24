<?php

echo '<h1>Aluno Editar</h1>';



var_dump($_POST);

$editarId = $_POST['id'];
$editarNome = $_POST['nome'];


$dsn = 'mysql:dbname=db_ti24;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);


$update = 'UPDATE tb_alunos SET nome = :nome WHERE id = :id';

$banco->prepare($update)->execute([
    ':id'   => $editarId,
    ':nome' => $editarNome
]);
