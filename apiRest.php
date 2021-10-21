<?php
include "utils.php";
$dbConn =  connect();


//Consultar registros
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['id']))
    {
      //Consulta por id
      $sql = $dbConn->prepare("SELECT * FROM jugador where id=:id");
      $sql->bindValue(':id', $_GET['id']);
      $sql->execute();
      echo json_encode(  $sql->fetch(PDO::FETCH_ASSOC)  );
      exit();
	  }
    else {
      //Consular todos los requistros
      $sql = $dbConn->prepare("SELECT * FROM jugador");
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      echo json_encode( $sql->fetchAll()  );
      exit();
	}
}




// Insertar Registro
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_GET;
    $sql = "INSERT INTO jugador (id, nombre, apellido, id_categoria, correo, telefono, direccion)
          VALUES
          (:id, :nombre, :apellido, :id_categoria, :correo, :telefono, :direccion)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $postId = $dbConn->lastInsertId();
    if($postId)
    {
      $input['id'] = $postId;
      echo json_encode($input);
      exit();
	 }
}

//Eliminar Registro
if ($_SERVER['REQUEST_METHOD'] == 'DELETE')
{
	$id = $_GET['id'];
  $statement = $dbConn->prepare("DELETE FROM jugador where id=:id");
  $statement->bindValue(':id', $id);
  $statement->execute();
	exit();
}
//Actualizar
if ($_SERVER['REQUEST_METHOD'] == 'PUT')
{
    $input = $_GET;
    $postId = $input['id'];
    $fields = getParams($input);
    $sql = "
          UPDATE jugador
          SET $fields
          WHERE id='$postId'
           ";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    exit();
}

?>