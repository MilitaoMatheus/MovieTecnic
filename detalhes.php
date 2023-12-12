<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Minha Loja</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	<style>
	
	.navbar{
		margin-bottom: 0;
	}
	
	
	</style>
	
	
	
</head>

<body>	
	
	<?php
	
	session_start();
	
	include 'conexao.php';	
	include 'nav.php';
	include 'cabecalho.html';

    if(!empty($_GET['cd'])){

    $cod_filme = $_GET['cd'];
    $consulta = $cn ->query("select * from vw_filme where cod_filme = '$cod_filme'");
    $exibir = $consulta->fetch(PDO::FETCH_ASSOC);
    } else {
        header("location:loja.php");
    }
    

    ?>
	
<div class="container-fluid">
	
	
	
	<div class="row">
		
		 <div class="col-sm-4 col-sm-offset-1">
			 
			 <h1>Detalhes do Produto</h1>
			 
			 <img src="img/<?php echo $exibir['desc_capa'];?>" class="img-responsive" style="width:100%;">
		
				<div class="col-sm-4 col-sm-offset-1" style="margin-top: 10px;"><img src="https://placehold.it/900x640" class="img-responsive"></div>
				<div class="col-sm-4 col-sm-offset-1" style="margin-top: 10px;"><img src="https://placehold.it/900x640" class="img-responsive"></div>
			
		</div>
		
				
 		 <div class="col-sm-7"><h1><?php echo $exibir['nome_filme'];?></h1>
		
		<p><?php echo $exibir['desc_sinopse'];?></p>
		
		<p><b>CATEGORIA:</b> <?php echo $exibir['desc_categoria'];?></p>
		
		<p><b>R$:</b> <?php  echo number_format($exibir ['vl_preco'], 2, ',', '.');?></p>
			 
        <p><b>MINUTAGEM:</b> <?php echo $exibir['num_minutos'];?> Minutos</p>
			 
		<button class="btn btn-lg btn-success">Comprar</button>
				
		</div>		
	

	
</div>
	
	<?php
	
	include 'rodape.html';
	
	?>
	
</body>
</html>