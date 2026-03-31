<?php
/*DataModulo do Delphi ou do Lazarus*/
class Conexao 
{
    /*FDConnection do Delphi ou ZeosConnection Lazarus*/
    private static $dbname = "olojinha";
    private static $host = "127.0.0.1";/*localhost*/
    private static $user = "root";
    private static $pass = "";
    private static $con = null;

    public function __construct()
{
 throw new \Exception('Not implemented');
}
/*CRIA A FUNÇÃO QUE CONECTA NO BANCO DE DADOS*/
public static function conectar (){
if (null === self::$con){

//1 igual é recebe (:= recebe no Delphi ou Lazarus)
/*PHP 2 iguais é igual sem fazer diferença de caracteres (= igual no Delphi ou Lazarus)
$nome1 = "Amanda";
$nome2 = "amanda";
if($nome1 == $nome2){
echo 'São iguais mesmo tendo caracteres em maisculo
}
PHP 3 iguais é igual fazendo diferença de caracteres, tem que ser exatamente igual
*/
try{
self::$con = new PDO ("mysql:host=" .self::$host.";dbname=" .self::$dbname, self::$user, self::$pass,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
}
 catch(Exception $erro){
    die($erro->getMessage()); /* Possível erro de banco, tabela, atributo, retorna a mensagem direta do banco*/ 
}

}
return self::$con;

}

public static function desconectar(){
    self::$con = null;
}

}
?>