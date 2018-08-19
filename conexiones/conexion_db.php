<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

class Conexion{
  private $tipo_de_base = 'mysql';
  private $host = 'localhost';
  private $nombre_de_base = 'sofware';
  private $usuario = 'halley';
  private $contrasena = 'halley1998';

  private $conexion="";
  private $stmt="";

  public function __construct(){
    //Sobreescribo el método constructor de la clase PDO.
    try{
       $this->conexion=new PDO($this->tipo_de_base.':host='.$this->host.';dbname='.$this->nombre_de_base, $this->usuario, $this->contrasena);
    }catch(PDOException $e){
       echo 'Ha surgido un error y no se puede conectar a la base de datos. Detalle: ' . $e->getMessage();
       exit;
    }
  }
  public function consulta($sql){
   self::__construct();
//   $this->$stmt = $this->conexion->prepare($sql);
//   $this->$stmt->execute();
   $this->$stmt = $this->conexion->query($sql);
  }
  public function select($campos, $base, $paremetros){
    $sql=$campos.$base.$paremetros;
   self::consulta($sql);
   $result=$this->$stmt;
   return $result;
  }

  public function insert( $sql){
   self::consulta($sql);
   $result=$this->$stmt;
   return $result;
  }
  public function update( $sql){
    self::consulta($sql);
    $result=$this->$stmt;
    return $result;
  }
  public function delete($sql){
   self::consulta($sql);
   $result=$this->$stmt;
   return $result;
  }
  public function cerrarcursor(){
    $this->$conexion=closeCursor();
  }

  public function cerrarconexion(){
    $this->$conexion=null;
  }
}


?>
