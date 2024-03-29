<%-- 
    Document   : home
    Created on : 04/11/2022, 22:37:41
    Author     : ccari
--%>

<%@page import="java.sql.Statement"%>
<%@page import="Db.DB2"%>
<%@page import="model.entities.Usuario"%>
<%@page import="model.dao.DaoFactory"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="Db.DbException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.cj.jdbc.Driver" %>
<%@page import="Db.DB" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Portfólio de apresentação profissional na área de tecnologia">
        <meta name="keywords" content="Java, JavaScript, Css, Html, Desenvolvedor, Desenvolvedor java">
        <title>Portfolio de Cláudio Carigé, Login e cadastro.</title>   
        <link href="css/style.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/56a4a469be.js" crossorigin="anonymous"></script>
    </head>
    <body class="body-back">
        <div id="login" >
            <h2 class="text-center text-white pt-5">Portfólio de Cláudio Carigé</h2>
            <p>Criado com Java Web JSP</p>
            <div class="container">              
                <div id="login-row" class="container-form row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="home.jsp" method="post">
                                <h3 class="text-center text-info">Login</h3>
                                <div class="form-group">
                                    <label for="username" class="text-info">Usuário</label><br>
                                    <input type="text" name="txtusuario" id="txtusuario" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Senha</label><br>
                                    <input type="password" name="txtsenha" id="txtsenha" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="remember-me" class="text-info"><span>Lembrar</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                    <input type="submit" name="submit" class="btn btn-info btn-md"  value="Logar">
                                </div>
                                <div id="register-link" class="text-right">
                                    <a name="btn-cadastrar" class="text-info" data-bs-toggle="modal" data-bs-target="#modal" style="cursor: pointer; color: blueviolet; text-align: right; font-size: 20px" ><span class="span-title">Cadastre-se</span></a>
                                </div>
                            </form>
                        </div>
                        
                    </div>
   
                </div>  
                <%
                    if (request.getParameter("submit") != null) {
                        String user = request.getParameter("txtusuario");
                        String pass = request.getParameter("txtsenha");

                        Usuario obj = new Usuario();
                        obj.setUsuario(user);
                        obj.setSenha(pass);
                        UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
                        Usuario usuario = usuarioDao.findByNameLogin(obj);

                        if (usuario != null) {
                            session.setAttribute("nomeUsuario", usuario.getUsuario());
                            response.sendRedirect("usuarios.jsp");
                        } else {
                            out.print("<script>alert('Dados incorretos!');</script>");
                        }
                    }
                %>
            </div>

        </div>
    </body>
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
                                <option value="recruiter">Recruiter</option>
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
    <!-- Fim Modal -->
</html>

<%    if (request.getParameter("btn-salvar") != null) {
        Usuario usuario2 = new Usuario();
        usuario2.setNome(request.getParameter("txtnome"));
        usuario2.setUsuario(request.getParameter("txtusuario"));
        usuario2.setSenha(request.getParameter("txtsenha"));
        usuario2.setNivel(request.getParameter("txtnivel"));

        UsuarioDao usuarioDao2 = DaoFactory.createUsuarioDao();
        usuarioDao2.insert(usuario2);
        out.print("<script>alert('Usuário cadastrado com sucesso!');</script>");
    }
%>


