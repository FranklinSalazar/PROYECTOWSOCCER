<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>INICIAR SECION</title>
    <link rel="stylesheet" href="css/styler.css" type="text/css">
    
</head>
<body>
<!-- Esto es el fondo de pantalla -->    
<style>
body{
background: url(img/fondo.jpg) no-repeat center center fixed;
background-size:cover;
-webkit-background-size:cover;
-moz-background-size:cover;
-o-background-size:cover;
}
</style>
<!-- Estos son los campos de texto y el boton de aceptar -->   
<center>
<form action="logica/loguear.php" method="post">  
<input type="text" name="usuario" placeholder="DIGITE USUARIO" class="text">
<br><br>
<input type="text" name="clave" placeholder="DIGITE CLAVE" class="text">
<br><br>
<br><br>

<button type="submit" class="boton">ENTRAR </button>
</form>
<form action="../olvcontraseña.php" method="post">  
<a class="olv" >¿olvidaste tu contraseña?</a>
</form> 
<tr>
<td>
<select name="pais">
<option value="1">ADMINISTRADOR</option>
<option value="2">TECNICO</option>
<option value="3">ACUDIENTE</option>
</select>
</td>
</tr>
</center>
<img src="img/123456.png" class="logo">
</body>
</html>