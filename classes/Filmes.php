<?php
class Filmes{

    public function exibirListaFilmes($limite = '') {

        $dsn = 'mysql:dbname=db_cinebox;host=127.0.0.1';
        $user = 'root';
        $password = '';
        $auxScript = '';
        
        $banco = new PDO($dsn, $user, $password);

        if (!empty($limite)) {
            $auxScript = " ORDER BY RAND() LIMIT {$limite}";
        }

        $script = 'SELECT * FROM tb_filmes' . $auxScript;

        return $banco->query($script)->fetchAll();

    }

}
