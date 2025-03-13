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

if (!empty($resultado) && $resultado != false) {
    header('location:loginSucesso.php');
} else {
    header('location:index.php');
}
