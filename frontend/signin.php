<script src="../js/signin.js"></script>
<div class="container containerSignin">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <?php if($_GET["signin"]=='kom'){?>
            <div id="alert" class="alert alert-danger" role="alert">Error en el registro.El email ya está en uso</div>
            <?php } 
            else if($_GET["signin"]=='kon'){?>
            <div id="alert" class="alert alert-danger" role="alert">Error en el registro.El nick ya está en uso</div>
            <?php }?>
            <center><img class="mb-4" src="/files/icon/logo_v2N.png" alt="" width="72" height="72"></center>
            <?php require 'formRegistro.php'; ?>
        </div>
    </div>
</div>