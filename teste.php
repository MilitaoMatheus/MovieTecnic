<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrar Produtos</title>
</head>
<body>
    <?php
        include 'conexao.php';
        $consulta = $cn->query('select * from vw_filme');

        while($exibe = $consulta->fetch(PDO::FETCH_ASSOC)){

        echo $exibe['nome_filme'].'<br>';
        echo $exibe['vl_preco'].'<br>';
        echo $exibe['desc_categoria'].'<br>';
        echo '<hr>';
        }
        
    ?>
</body>
</html>