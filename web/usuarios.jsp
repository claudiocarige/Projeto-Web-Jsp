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

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Portfolio Cláudio</title>
    <link href="css/usuario.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body style="background-color: #331E4D">
    <nav class="navbar navbar-expand-lg" style="background-color: lightgoldenrodyellow">
        <div class="container-fluid">
            <a class="navbar-brand" href="usuarios.jsp">Portfólio - Cláudio Carigé</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="userlist.jsp">CRUD</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
            </div>
            <form class="form-inline my-2 my-lg-0">
                <span class="m-3" style="color: lightseagreen"><small>
                        <%
                            String nomeSession = (String) session.getAttribute("nomeUsuario");
                            out.print(nomeSession);

                            if (nomeSession == null) {
                                response.sendRedirect("index.jsp");
                            }
                        %>   
                    </small> </span>
            </form>
            <a href="logout.jsp"> <td><img src="./img/logout.png" width="25" alt="alt"/></td></a> 
        </div>
    </nav>
    <section class="our-webcoderskull padding-lg" >
        <div class="container">
            <div class="row heading heading-icon">
                <h2>Portfólio</h2>
            </div>
            <ul class="row">
                <li class="col-12 col-md-6 col-lg-3"">
                    <div class="cnt-block equal-hight"  >
                        <figure><img src="img/FotoClaudio.jpg" class="img-responsive" alt="Foto Cláudio Carigé" width="50px"></figure>
                        <h3><a href="sobremim.jsp">About me</a></h3>
                        <p>Software Engineer</p>
                        <ul class="follow-us clearfix">
                            <li><a href="https://github.com/claudiocarige" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.linkedin.com/in/claudio-carige-b7429b6b/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight margim">
                        <figure><a href="experience.jsp" ><img src="img/experienciaoOk.png" class="img-responsive" style="height:160px; width: 160px" alt=""></a></figure>
                        <h3><a>Professional experience</a></h3>
                        <p>Conheça minhas Experiências/p>
<!--                        <ul class="follow-us clearfix">
                            <li><a href="experience.jsp"><i class="fa fa-list" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-baby" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.linkedin.com/in/claudio-carige-b7429b6b/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>-->
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight margim" >
                        <figure><a href="formation.jsp"><img src="img/courseOk.png" class="img-responsive" alt="" style="width: 160px; height: 160px"></a></figure>
                        <h3><a>Academic training</a></h3>
                        <p>Veja minha formação e  meus conhecimentos.</p>
<!--                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>-->
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight margim" >
                        <figure><a  href="userlist.jsp"><img src="img/crudOk.png" class="img-responsive" alt="" style="width: 160px; height: 160px"></a></figure>
                        <h3><a>CRUD </a></h3>
                        <p>Editar / Buscar / Excluir </p>
<!--                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>-->
                    </div>
                </li>
            </ul>
        </div>
    </section>

</body>

