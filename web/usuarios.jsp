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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <link href="css/usuario.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body style="background-color: #2c0c3c">
    <%
        Statement st = null;
        ResultSet rs = null;
    %>
    <nav class="navbar navbar-expand-lg" style="background-color: lightgoldenrodyellow">
        <div class="container-fluid">
            <a class="navbar-brand" href="usuarios.jsp">Portfólio - Cláudio Carigé</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="userlist.jsp">Usuários</a>
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
    <section class="our-webcoderskull padding-lg" style="background-color: #2c0c3c">
        <div class="container">
            <div class="row heading heading-icon">
                <h2>My Portfolio</h2>
            </div>
            <ul class="row">
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight" style="height: 100px;">
                        <h3><a href="userlist.jsp"><strong>Lista/Editar/Buscar/Excluir</strong></a></h3>
                        <p></p>
                        <ul class="follow-us clearfix">
                            <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href=""><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight" style="height: 100px;">
                        <h3><a href="#"><strong>LIstar usuários</strong> </a></h3>
                        <p>Freelance Web Developer</p>
                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block equal-hight" style="height: 100px;">
                        <h3><a href="#"><strong>LIstar usuários</strong> </a></h3>
                        <p>Freelance Web Developer</p>
                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-12 col-md-6 col-lg-3">
                    <div class="cnt-block" style="height: 100px;">
                        <h3><a href="#"><strong>LIstar usuários</strong></a></h3>
                        <p>Freelance Web Developer</p>
                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>
</body>

