<?php

require_once "../bootstrap.php";

use src\Conexao;


$data = file_get_contents("php://input");
$dataDecode = json_decode($data,true);
// print_r(json_encode($dataDecode));
$tituloPais = $dataDecode["tituloPais"];
if($dataDecode["tituloPais"] == ""){
  echo json_encode(["Warning" => "Espaço vazio"]);
  die();
}

$conexao = Conexao::onlyInstance();
$prepare = $conexao->prepare("select titulo from buscas_dados where titulo like :tituloPais limit 5");
$prepare->execute(["tituloPais" => $tituloPais . "%"]);
$data = $prepare->fetchAll(\PDO::FETCH_ASSOC);
print_r(json_encode($data));
