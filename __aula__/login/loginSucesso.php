
<?php
    $dados = [
        'nome' => '',
        'telefone' => '199926323292',
        'email' => 'paulo@gmail.com',
        'nascimento' => '2002'
    ]
?>


<?= isset($dados) && empty($dados) 
    ?'<form action="cadastrar.php" method="get">' 
    :'<form action="editar.php" method="get">' ?>


    <input type="text" placeholder="nome" value="<?= !empty($dados['nome']) ? $dados['nome'] : '' ?>">
    <input type="text" placeholder="telefone">
    <input type="text" placeholder="email">
    <input type="text" placeholder="nascimento">

    <input type="submit">

</form>