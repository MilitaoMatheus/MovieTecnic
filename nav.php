<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <!-- abertura menu hambrguer -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- fechamento menu hambrguer -->
      <a class="navbar-brand" href="#">MovieTecnic</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="loja.php"> Home <span class="sr-only">(current)</span></a></li>
        <li><a href="lanc.php">Lançamentos</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Categorias <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="categoria.php?cat=7"> Ficção Cientifica </a></li>
            <li><a href="categoria.php?cat=1"> Comédia </a></li>
            <li><a href="categoria.php?cat=2"> Terror </a></li>
            <li role="separator" class="divider"></li>
            <li><a href="categoria.php?cat=4"> Romance </a></li>
            <li role="separator" class="divider"></li>
            <li><a href="categoria.php?cat=6"> Anime </a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search" name="frmpesquisa" method="get" action="busca.php">
        <div class="form-group">
          <input type="text" class="form-control"  name="txtPesquisar" placeholder="Pesquisar">
        </div>
        <button type="submit" class="btn btn-default">Pesquisar</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Contato</a></li>
          <?php if(empty($_SESSION['ID'])) { ?>
        <li><a href="formlogon.php"><span class="glyphicon glyphicon-log-in"> Logon </a></span></li>
          <?php } else{

            if($_SESSION['Status'] == 0){
            $consulta_usuario = $cn->query("select nm_usuario from tbl_usuario where cd_usuario = '$_SESSION[ID]'");
            $exibe_usuario = $consulta_usuario->fetch(PDO::FETCH_ASSOC);
          ?>
          <li><a href="#"><span class="glyphicon glyphicon-user"><?php echo $exibe_usuario['nm_usuario'];?> </a></span></li>
          <li><a href="sair.php"><span class="glyphicon glyphicon-log-out"> Sair </a></span></li>
          <?php } else { ?> 
            <li><a href="adm.php"><button class="btn btn-sm btn-danger">ADMINISTRADOR </a></li>
          <li><a href="sair.php"><span class="glyphicon glyphicon-log-out"> Sair </a></span></li>
          <?php } } ?>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>