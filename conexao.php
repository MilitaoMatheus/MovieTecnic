<?php
$servidor= "Localhost";
$usuario= "root";
$senha = "12345678";
$banco = "db_movietecnic";

$cn = new PDO("mysql:host=$servidor;dbname=$banco", $usuario, $senha)
?>