<?php

include './includes/header.php';


if ($_SERVER["REQUEST_METHOD"] == 'POST' && !empty($_POST)) {

    $usuarioForm = $_POST['usuario'];
    $senhaForm   = $_POST['senha'];

    $dsn = "mysql:dbname=db_cinebox;host=localhost";
    $user = "root";
    $password = "";

    $banco = new PDO($dsn, $user, $password);

    $script = "SELECT * FROM tb_usuario WHERE usuario = '{$usuarioForm}' AND senha = '{$senhaForm}'";

    $resultado = $banco->query($script)->fetch();

    if (!empty($resultado) && $resultado != false) {

        $selectUsuario = "SELECT * FROM tb_pessoa WHERE id = {$resultado['id_pessoa']}";
        $dadosUsuario = $banco->query($selectUsuario)->fetch();

        session_start();

        $_SESSION['id_pessoa']      = $dadosUsuario['id'];
        $_SESSION['nome']           = $dadosUsuario['nome'];
        $_SESSION['ano_nascimento'] = $dadosUsuario['ano_nascimento'];
        $_SESSION['telefone_1']     = $dadosUsuario['telefone_1'];


        header('location:usuario.php');

    } else {
        echo '<script> 
            alert("Usuario ou Senha não encontrados")
            window.location.replace("./usuario-login.php")
        </script>';
    }
}

include './includes/user_login.html';

include_once './includes/footer.php';
