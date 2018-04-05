<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/"><img src="/files/icon/logo.png" alt="kapi solution"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li>
                <form class="form-wrapper cf" action="busqueda.php">
                <input class="" name="search" type="text" aria-label="Search" 
                    placeholder=	
                        <?php 
                            echo (isset($_GET["search"])&&$_GET["search"]!="")?'"'.$_GET["search"].'"':'"'.'Busqueda...'.'"';
                        ?>
                >
                <button class="" type="submit">BUSCAR</button>
                </form>
            </li>
            <li><a href="/comunidad.php">COMUNIDAD</a></li>
            <li><a href="/articulos.php">ARTÍCULOS</a></li>
            <li><a href="/examenes.php">EXÁMENES</a></li>
        </ul>
        <?php
            if(isset($_SESSION["login"])){
            ?>  
                <ul class="nav navbar-nav navbar-right" id="login">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-rounded" id="imgUsr" src="/files/img/usuario/<?php echo $_SESSION["nick"]?>.jpg"></img><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item">Registrado como <?php echo $_SESSION["nick"]?></a></li>
                        <li class="divider"></li>
                        <li><a class="dropdown-item" href="/usuario.php?id=<?php echo $_SESSION["nick"]?>">Ver Perfil</a></li>
                        <li class="divider"></li>
                        <li><a class="dropdown-item" href="backend/logout.php">Cerrar Sesion</a></li>
                    </ul> 
                </li>
                </ul>
            <?php
            }else{
            ?>
                <ul class="nav navbar-nav navbar-right" id="login">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="label mylabel">SignIn</span><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/login.php">Inicia sesión</a></li>
                        <li class="divider"></li>
                        <li><a class="dropdown-item" href="/signin.php">Regístrate</a></li>
                    </ul> 
                </li>
                </ul>
            <?php
            }
        ?>
    </div>
  </div>
</nav>