<?php 

echo '<h1>Aluno-deletetar.php</h1>';
//um comentario top
$dsn = 'mysql:dbname=db_ti24;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$idFormulario = $_GET['id'];

// Apagando a tabela tb_alunos
$delete = 'DELETE FROM tb_alunos WHERE id = :id';
$box = $banco->prepare($delete);
$box->execute([
    ':id' => $idFormulario
]);

// Apagando a tabela tb_info_alunos
$delete = 'DELETE FROM tb_info_alunos WHERE id_alunos = :id_alunos';
$box = $banco->prepare($delete);
$box->execute([
    ':id_alunos' => $idFormulario
]);

// twig
echo '<script> 
    alert("Usuario apagado com Sucesso!!!") 
    window.location.replace("index.php")
</script>';
// header('location:index.php');