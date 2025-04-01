<html lang="pt-br">

<style>
    body {
        display: flex;
        justify-content: center;
    }

    form {
        display: flex;
        flex-direction: column;
        width: 200px;
        gap: 10px;
    }
</style>

<!-- 
    METODO DE ENVIO -> 
    GET -> manda informações atraves da URL
    POST -> manda informações atraves do corpo do arquivo...
    Action ->
    fala para onde deve enviar os dados
-->
<form action="./aluno-cadastrar.php" method="POST">
    <h2>formulario top</h2>

    <input type="text" placeholder="nome" name="nome">
    <input type="number" placeholder="telefone" name="tel">
    <input type="email" placeholder="email" name="email">
    <input type="date" placeholder="nascimento" name="nasc">
    <div>
        <label>Frequente? </label>
        <input type="checkbox" name="frequente">
    </div>
    <input type="file" accept="image/*" name="img">

    <input type="submit">

</form>