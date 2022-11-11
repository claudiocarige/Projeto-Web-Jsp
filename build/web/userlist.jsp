<%-- 
    Document   : register
    Created on : 07/11/2022, 09:39:39
    Author     : ccari
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dao.DaoFactory"%>
<%@page import="java.io.Console"%>
<%@page import="model.entities.Usuario"%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Usuarios</title>
        <link href="css/styleuserlist.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="./css/all.min.css" >
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    </head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/56a4a469be.js" crossorigin="anonymous"></script>
    <body style="background-color: #2c0c3c">
        <nav class="navbar navbar-expand-lg" style="background-color: lightgoldenrodyellow">
            <div class="container-fluid">
                <a class="navbar-brand" href="usuarios.jsp">Portfólio - Cláudio Carigé</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="usuarios.jsp">Home</a>
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
                    <a href="logout.jsp"> <td><img src="./img/logout.png" width="25" alt="alt"/></td></a>
                </form>
            </div>
        </nav>  
        <div class="container-fluid">
            <div class="row mt-5 mb-4">
                <button type="button" class="btn-info btn-sm butttonUsuario" data-bs-toggle="modal" data-bs-target="#modal"">Novo Usuário</button>
                <form class="form-inline my-2 my-lg-0 direita" role="search" method="post">
                    <input class="form-control form-control-sm mr-sm-2" type="search" name="txtbuscar" placeholder="Buscar pelo nome" aria-label="Search">
                    <button class="btn btn-outline-info btn-sm my-2 my-sm-0" type="submit" name="btn-buscar">Buscar</button>
                </form>
            </div>
            <table class="table mt-5 table-striped" style="color: white">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Nível</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <%//  
                        Usuario usuario = new Usuario();
                        List<Usuario> list = new ArrayList<>();
                        if (request.getParameter("btn-buscar") != null) {
                            UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
                            usuario.setNome('%' + request.getParameter("txtbuscar") + '%');
                            list = usuarioDao.findByName(usuario);
                        } else {
                            UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
                            list = usuarioDao.findAll();
                        }
                        for (Usuario usuario2 : list) {
                    %> 
                    <tr style="font-size: 15px; color: khaki">
                        <th><%=usuario2.getNome()%></th>
                        <td><%=usuario2.getUsuario()%></td>
                        <td><%=usuario2.getSenha()%></td>
                        <td><%=usuario2.getNivel()%></td>
                        <td><a href="editarusuario.jsp?id=<%=usuario2.getUsuario()%>"  type="button" class="text-info" data-ls-module="modal" data-action="editarusuario.jsp"><i class="fa fa-edit fa-lg"></i></a></td>
                        <td><a href="userlist.jsp?funcao=excluir&id=<%=usuario2.getId()%>" class="text-danger"><i class="fa fa-trash-alt fa-lg"></i></a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>    
        </div>
    </body>
</html>
<!-- Modal -->
<div class="modal " id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title fs-5" style="color: blue" id="exampleModalLabel">Inserir Usuário</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden>&times;</span>
                </button>
            </div>
            <form id="cadastro-form" class="form" action="" method="post">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="username" class="text-info">Nome</label><br>
                        <input type="text" name="txtnome" id="txtnome" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="username" class="text-info">Usuário</label><br>
                        <input type="text" name="txtusuario" id="txtusuario" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="password" class="text-info">Senha</label><br>
                        <input type="text" name="txtsenha" id="txtsenha" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="FormControlSelect" class="text-info">Nível</label>
                        <select class="form-control" name="txtnivel" id="txtnivel">
                            <option selected>Selecione</option>
                            <option value="comum">Comum</option>
                            <option value="admin">Admin</option>

                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    <button type="submit" name="btn-salvar" class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%    if (request.getParameter("btn-salvar") != null) {
        Usuario usuario3 = new Usuario();
        usuario3.setNome(request.getParameter("txtnome"));
        usuario3.setUsuario(request.getParameter("txtusuario"));
        usuario3.setSenha(request.getParameter("txtsenha"));
        usuario3.setNivel(request.getParameter("txtnivel"));
        if (usuario.getNivel().equals("admin")) {
            UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
            usuarioDao.insert(usuario3);
            response.setIntHeader("Refresh", 0);
        }
%>

<%
    if (request.getParameter("funcao") != null && request.getParameter("funcao").equals("excluir")) {
        int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
        Usuario obj = new Usuario();
        obj.setUsuario(nomeSession);
        Usuario usuario4 = new Usuario();
        usuario4 = usuarioDao.findByUser(obj);
        if (usuario4.getUsuario().equals(nomeSession) && usuario4.getNivel().equals("admin")) {
            UsuarioDao usuarioDao2 = DaoFactory.createUsuarioDao();
            usuarioDao2.deleteById(id);
            response.sendRedirect("userlist.jsp");
        } else {
            out.print("<script>alert('Seu nível não permite excluir usuários!');</script>");

        }
    }
%>