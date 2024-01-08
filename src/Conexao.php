<?php






namespace src;

require_once "config.php";


class Conexao{
  public static $instance;

  public static function onlyInstance(){
    if(self::$instance == null){
      self::$instance = new \PDO(
        DB_HOST .
        DB_NAME,
        DB_USER,
        DB_PASSWORD
      );
      self::$instance->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
      return self::$instance;
    }
    return self::$instance;
  }
}