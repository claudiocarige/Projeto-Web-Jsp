<%-- 
    Document   : usuarios
    Created on : 05/11/2022, 00:20:45
    Author     : ccari
--%>
<%@page import="Db.DB2"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.cj.jdbc.Driver" %>
<%@page import="Db.DB" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Portfólio de apresentação profissional na área de tecnologia">
    <meta name="keywords" content="Java, JavaScript, Css, Html, Desenvolvedor, Desenvolvedor java">
    <title>Portfolio de Cláudio Carigé, home de apresentação das páginas.</title>
    <link href="css/usuario.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/jquery-3.6.1.min.js"></script>

</head>
<body>
    <section class="container darkest-bg fixed-top">
        <nav class="navbar" style="background-color: lightgoldenrodyellow; height: 50px">
            <div class="container-fluid">
                <a class="navbar-brand" href="usuarios.jsp"><span style="color:#660066;">Portfólio - Cláudio Carigé</span></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" id="link-nav-crud" href="userlist.jsp" style="color:#660066;">CRUD</a>
                        </li>
                    </ul>
              
                <div class="container-session">
                    <form class="form-inline my-2 my-lg-0">
                        <span class="m-3" style="color: lightseagreen"><small>
                                <%
                                    String nomeSession = (String) session.getAttribute("nomeUsuario");
                                    out.print(nomeSession);

                                    if (nomeSession == null) {
                                        response.sendRedirect("index.html");
                                    }
                                %>   
                            </small> </span>
                    </form>
                    <a href="logout.jsp"><img src="./img/logout.png" width="25" alt="Icone do Logout"/></a> 
                </div>
            </div>
        </nav>
    </section>
    <section class="our-webcoderskull padding-lg middle-bg" >
        <div class="container-second">
            <div class="row heading heading-icon">
                <h2>Portfólio</h2>
            </div>
            <ul class="row">
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight hide" id="opcao1" >
                        <figure><a href="sobremim.jsp"><img src="img/FotoClaudio.jpg" class="img-responsive" alt="Foto Cláudio Carigé" width="50px"></a></figure>
                        <h3><a href="sobremim.jsp">Sobre mim</a></h3>
                        <p>Desenvolvedor</p>
                        <ul class="follow-us clearfix">
                            <li><a href="https://github.com/claudiocarige" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.linkedin.com/in/claudiocarige" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3 ">
                    <div class="cnt-block equal-hight margim hide " id="opcao2">
                        <figure><a href="experience.jsp" ><img src="img/experienciaoOk.png" class="img-responsive" style="height:160px; width: 160px" alt="Imagem com Icone que se refere a Experiência, uma maleta e engrenagem"></a></figure>
                        <h3><a href="experience.jsp">Experiência Profissional</a></h3>
                        <p>Conheça minhas Experiências</p>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3 ">
                    <div class="cnt-block equal-hight margim hide" id="opcao3" >
                        <figure><a href="formation.jsp"><img src="img/courseOk.png" class="img-responsive" alt="Imagem com Icone que se refere a Formação, um monitor com capelo, ou chapéu de formatura." style="width: 160px; height: 160px"></a></figure>
                        <h3><a href="formation.jsp">Formação</a></h3>
                        <p>Veja minha formação e  meus conhecimentos.</p>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3 " >
                    <div class="cnt-block equal-hight margim hide" id="opcao4">
                        <figure><a  href="userlist.jsp"><img src="img/crudOk.png" class="img-responsive" alt="Imagem com Icone que se refere a uma CRUD, que são as quatro operações básicas para banco de dados. Uma cabeça abrindo e saindo uma lampada." style="width: 160px; height: 160px"></a></figure>
                        <h3><a href="userlist.jsp">CRUD </a></h3>
                        <p>Editar / Buscar / Excluir </p>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $("#opcao1").slideUp().delay(300).slideDown(800);
            $("#opcao2").slideUp().delay(400).slideDown(1200);
            $("#opcao3").slideUp().delay(500).slideDown(1600);
            $("#opcao4").slideUp().delay(600).slideDown(2000);

        });
    </script>
</body>
</html>
