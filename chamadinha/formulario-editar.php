<html lang="pt-br">

<style>
    body{
        display: flex;
        justify-content: center;
    }
    form{
        display: flex;
        flex-direction: column;
        width: 200px;
        gap: 10px;
    }
</style>

<?php 

$id_aluno_alterar = $_GET['id_aluno_alterar'];

var_dump($id_aluno_alterar);

$dsn = 'mysql:dbname=db_ti24;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$select = 'SELECT tb_info_alunos.*, tb_alunos.nome FROM tb_info_alunos INNER JOIN tb_alunos ON tb_alunos.id = tb_info_alunos.id_alunos WHERE tb_info_alunos.id_alunos = ' . $id_aluno_alterar;

$dados = $banco->query($select)->fetch();

?>

<form action="./aluno-editar.php" method="POST">

    <h2>Editar Cadastro</h2>
    <img src="./img/<?= $dados['img'] ?>" alt="">

    <input type="hidden" placeholder="id"         name="id"     value="<?= $dados['id'] ?>">

    <input type="text"   placeholder="nome"       name="nome"   value="<?= $dados['nome'] ?>">
    <input type="number" placeholder="telefone"   name="tel"    value="<?= $dados['telefone'] ?>">
    <input type="email"  placeholder="email"      name="email"  value="<?= $dados['email'] ?>">
    <input type="date"   placeholder="nascimento" name="nasc"   value="<?= $dados['nascimento'] ?>">
    
    <div>
        <label>Frequente? </label>
        <input type="checkbox" name="frequente">
    </div>

    <input type="file" accept="image/*" name="img">

    <input type="submit">

</form>
