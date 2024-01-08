<?php



require_once "bootstrap.php";

use src\Conexao;

$conexao = Conexao::onlyInstance();
$prepare = $conexao->prepare("select * from buscas_dados");
$prepare->execute();
$data = $prepare->fetch(\PDO::FETCH_ASSOC);
print_r($data);