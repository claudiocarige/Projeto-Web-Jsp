<%@page import="model.entities.Usuario"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dao.DaoFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                Usuario usuario = new Usuario();
                                usuario.setUsuario(request.getParameter("id"));
                                UsuarioDao usuariodao = DaoFactory.createUsuarioDao();
                                Usuario usuario2 = usuariodao.findByUser(usuario);
                            %>  
                            <script>
                                document.getElementById('txtnome').value = <%=usuario2.getNome()%>;
                            </script>
                        </small> </span>
                    <a href="logout.jsp"> <td><img src="./img/logout.png" width="25" alt="alt"/></td></a>
                </form>
            </div>
        </nav>  
        <div class="container ">
            <div class="retornar">
                <a class="btn btn-primary" type="button" href="userlist.jsp">Retornar</a>
                <%   if (request.getParameter("btn-retornar") != null) {
                        response.sendRedirect("userlist.jsp");
                    }
                %>
            </div>
        </div>
    </body>
</html>
<!-- Modal -->
<div class="modal " id="modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                    <h3 class="modal-title fs-5" style="color: blue" id="exampleModalLabel">Inserir Usuário</h3>
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
                    <a href="userlist.jsp" type="button" name="btn-cancelar" class="text-danger">Cancelar</a>
                    <button type="submit" name="btn-editar" class="btn btn-primary">Editar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<%    if (nomeSession != null) {%>
<script>
    $(document).ready(function () {
        $('#modal').modal('show');
    });
</script><% }%>

<%    if (request.getParameter("btn-editar") != null) {
        if (usuario2.getUsuario().equals(nomeSession)) {
            if (usuario2.getUsuario().equals(request.getParameter("txtusuario"))) {
                UsuarioDao usuarioDao3 = DaoFactory.createUsuarioDao();
                Usuario usuario3 = new Usuario();
                usuario3.setId(usuario2.getId());
                usuario3.setNome(request.getParameter("txtnome"));
                usuario3.setUsuario(request.getParameter("txtusuario"));
                usuario3.setSenha(request.getParameter("txtsenha"));
                usuario3.setNivel(request.getParameter("txtnivel"));
                usuarioDao3.update(usuario3);
                out.print("<script>alert('Usuário Alterado com Sucesso!');</script>");
                response.sendRedirect("userlist.jsp");
            } else {
                out.print("<script>alert('Você não pode alterar o seu e-mail!');</script>");
            }
        } else {
            out.print("<script>alert('Você não tem permissão para Alterrar este usuário!');</script>");
        }
    }
%>
