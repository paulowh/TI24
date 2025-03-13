<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<style>
    body{
        display: flex;
        justify-content: center;
        background-color: #0e0e0e;
        color: #f2f2f2;
    }
    
    form {
        width: 500px;
    }
</style>

<body>
    <form action="auxlogin.php" method="POST" class="mt-5">

        <h1>Login</h1>
        <label class="form-label">Usuario: </label>
        <input type="text" class="form-control" name="user">

        <label class="form-label">Senha: </label>
        <input type="text" class="form-control" name="password">

        <input class="btn btn-success mt-3" type="submit">
    </form>
</body>

</html>