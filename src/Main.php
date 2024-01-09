<?php

require_once "../bootstrap.php";

use src\Conexao;


$tituloPais = file_get_contents("php://input");
print_r($tituloPais);
$conexao = Conexao::onlyInstance();
$prepare = $conexao->prepare("select buscas_dados from buscas_dados where titulo like :tituloPais limit 5");
$prepare->execute(["tituloPais" => $tituloPais . "%"]);
$data = $prepare->fetchAll(\PDO::FETCH_ASSOC);
