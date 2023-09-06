<%-- 
    Document   : Exibicion
    Created on : 4 sept 2023, 16:06:56
    Author     : OA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Venta de Carros</title>
    <link href="wwwroot/css/carros2.css" rel="stylesheet" type="text/css"/>
    
</head>
<body>
    <jsp:include page="/Views/Shared/headerBody.jsp" /> 
    <header>
        <h1>Exhibición de Carros Shelby</h1>
      <!--  <nav>
            <ul>
                <li><a href="/Home/Index">Inicio</a></li>
                <li><a href="#">Carros</a></li>
                <li><a href="/Home/AccesoAdmin">Registro de Vehiculos</a></li>
            </ul>
        </nav>-->
    </header>
    <main>
        <section class="banner">
           <!-- <h2>Encuentra el carro de tus sueños</h2>-->
          <!--  <a href="#" class="button">Ver Carros</a>-->
        </section>
        <section class="featured">
            <div class="car">
                <img src="wwwroot/img/Rolls-RoyceWraith.jpg" alt="Carro 1">
                <h3>Rolls RoyceWraith</h3>
              <!--  <p>$100,000</p> -->
            </div>
            <div class="car">
                <img src="wwwroot/img/McLaren720S.jpg" alt="Carro 2">
                <h3>McLaren720S</h3>
             <!--   <p>$150,000</p>-->
            </div>
            <div class="car">
                <img src="wwwroot/img/Ferrari812.jpg" alt="Carro 3">
                <h3>Ferrari812</h3>
               <!-- <p>$200,000</p>-->
            </div>
            <div class="car">
                <img src="wwwroot/img/AudiA8.jpg" alt="Carro 3">
                <h3>AudiA8</h3>
              <!--  <p>$200,000</p> -->
            </div>

        </section>
    </main>
   <!-- <footer>
        <p>Derechos Reservados &copy; 2023 Venta de Carros</p>
    </footer>-->
</body>
</html>
