<?php

echo '<h1>Auxlogin.php</h1>';

$userForm = $_POST['user'];
$passwordForm = $_POST['password'];


$dsn = 'mysql:dbname=db_login;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$consultaUsuarioSenha = 'SELECT * FROM tb_usuario WHERE usuario = "' . $userForm . '" AND senha = "' . $passwordForm . '"';

$resultado = $banco->query($consultaUsuarioSenha)->fetch();

$status = $resultado['status'];

$_
?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


<?php if ($status == 'admin') { ?>

<h1>Bem Vindo USUARIO ADMIN</h1>

<?php } ?>


<h1>Bem Vindo USUARIO COMUM</h1>

<a href="#" class="btn btn-success" >cadastrar -comum</a>
<a href="#" class="btn btn-primary" >Abrir -comum</a> 


<a href="#" class="btn btn-warning <?= $status != 'admin' ? 'disabled' : ''  ?>" >Editar -admin</a> 
<a href="#" class="btn btn-danger"  >Excluir -admin</a>


















<?php
die;
if (!empty($resultado) && $resultado != false) {
    header('location:loginSucesso.php');
} else {
    header('location:index.php');
}
