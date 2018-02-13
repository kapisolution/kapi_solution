<nav class="navbar navbar-inverse navbar-fixed-top">
<a class="navbar-brand" href="/"><img src="/files/icon/logo.png" alt="kapi solution"></a>
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
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
        <?php
        if(isset($_SESSION["login"])){
            ?>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">COMUNIDAD<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Añadir contenido</a></li>
            <li><a href="#">Modificar contenido</a></li>
        </ul>
        </li>
        <?php
        }
        ?>
        <li><a href="#">ARTÍCULOS</a></li>
        <li><a href="#">EXÁMENES</a></li>
        </ul>
        <?php
        if(isset($_SESSION["login"])){
        ?>
        <ul class="nav navbar-nav navbar-right">
        <?php echo '<li><a href="#"><span class="glyphicon glyphicon-user"></span> Bienvenido ' .$_SESSION["nick"]. '</a></li>'?>
        <li><a href="/backend/logout.php"><span class="glyphicon glyphicon-log-in"></span> CERRAR SESIÓN</a></li>
        </ul>
        <?php
        }else{
        ?>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="/signin.php"><span class="glyphicon glyphicon-user"></span> Regístrate</a></li>
        <li><a href="/login.php"><span class="glyphicon glyphicon-log-in"></span> INICIAR SESIÓN</a></li>
        </ul>
        <?php
        }
        ?>
    </div>
  </div>
</nav>