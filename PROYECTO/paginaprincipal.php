
<!DOCTYPE html>
<html>
<head>
<title>Men� lateral escamoteable sin JavaScript</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<style>
body {
    font-family: "Segoe UI", sans-serif;
    font-size:100%;
    margin:0;
    padding:0;
}

header {
    background:#333;
    color:#eee;
    width:100%;
}

input#abrir-cerrar {
    visibility:hidden;
    position: absolute;
    top: -9999px;
}


label[for="abrir-cerrar"] {
    cursor:pointer;
    padding: 1rem;
    background-color:#333;
    color:#fff;
    display:inline-block;
    width:100%;

}

.cerrar {
    display:none;
}

#sidebar {
    width:0;
}

#contenido {
    margin-left:0;
}

input#abrir-cerrar:checked ~ #sidebar {
    width:300px;
}

input#abrir-cerrar:checked + label[for="abrir-cerrar"], input#abrir-cerrar:checked ~ #contenido {
    margin-left:300px;
    transition: margin-left .4s;
}


input#abrir-cerrar:checked + label[for="abrir-cerrar"] .cerrar {
    display:inline;
}

input#abrir-cerrar:checked + label[for="abrir-cerrar"] .abrir {
    display:none;
}

.sidebar {
    position: fixed;
    height: 100%;
    width: 0;
    top: 0;
    left: 0;
    z-index: 1;
    background-color: #00324b;
    overflow-x: hidden;
    transition: 0.4s;
    padding: 1rem 0;
    box-sizing:border-box;
}

.sidebar .boton-cerrar {
    position: absolute;
    top: 0.5rem;
    right: 1rem;
    font-size: 2rem;
    display: block;
    padding: 0;
    line-height: 1.5rem;
    margin: 0;
    height: 32px;
    width: 32px;
    text-align: center;
    vertical-align: top;
}

.sidebar ul, .sidebar li{
    margin:0;
    padding:0;
    list-style:none inside;
}

.sidebar ul {
    margin: 4rem auto;
    display: block;
    width: 80%;
    min-width:200px;
}

.sidebar a {
    display: block;
    font-size: 120%;
    color: #eee;
    text-decoration: none;
    PADDING: 28px;
    border-radius: 10px;
    
}

.sidebar a:hover{
    color:#fff;
    background-color: #f90;

}

h1 {
    color:#f90;
    font-size:180%;
    font-weight:normal;
}
#contenido {
    transition: margin-left .4s;
    padding: 1rem;
}

.abrir-cerrar {
    color: #2E88C7;
    font-size:1rem;   
}


</style>


</head>
<body>
<style>
body{
background: url(img/fondo.jpg) no-repeat center center fixed;
background-size:cover;
-webkit-background-size:cover;
-moz-background-size:cover;
-o-background-size:cover;
}

</style>
    <input type="checkbox" id="abrir-cerrar" name="abrir-cerrar" value="">
    <label for="abrir-cerrar">&#9776; <span class="abrir">MENU</span><span class="cerrar"></span></label>
    <div id="sidebar" class="sidebar">
        <ul class="menu">
            <li><a href="#">ADMINISTRADOR</a></li>
            <li><a href="#">ENTRENADORES</a></li>
            <li><a href="#">FUTBOLISTAS</a></li>
            <li><a href="#">ACUDIENTE</a></li>
            <li><a href="#">CATEGORIA</a></li>
            <li><a href="#">SOSTENIMIENTO</a></li>
        </ul>
    </div>
    <div id="contenido">
            
    </div>
</body>
</html> 
<?php


session_start();
$usuario = $_SESSION['username'];

if(!isset($usuario)){
    header("location: login.php");

}else{
    echo"<script>alert('BIENVENIDO $usuario')</script>";


    echo "<a href='logica/salir.php'>CERRAR SESION</a>";


}


?>


