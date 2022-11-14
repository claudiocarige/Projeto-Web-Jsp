<%-- 
    Document   : experience
    Created on : 11/11/2022, 10:57:26
    Author     : ccari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/styleexperience.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="js/scriptsexperience.js" defer ></script>
    </head>
    <body>
        <section class="container darkest-bg fixed-top">
            <nav class="navbar navbar-expand-lg " style="background-color: lightgoldenrodyellow; height: 50px">
                <div class="container-fluid">
                    <a class="navbar-brand" href="usuarios.jsp"><span style="color:#660066;">Portfólio - Cláudio Carigé</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="usuarios.jsp" style="color:#660066">Home</a>
                            </li>
                            <li class="nav-item">
                            </li>
                        </ul>
                    </div>
                    <form class="form-inline my-2 my-lg-0">
                        <a class="" href="usuarios.jsp" style="font-size:15px;  color:#660066" ><b>Voltar</b></a>
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
        </section>
        <div class="container-fluid middle-bg py-5">
            <div class="container ">
                <div class="row pt-5">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-9">
                                <h1 class="bold lightest-txt">UNIFACS</h1>
                            </div>
                            <div class="col-md-2 local1">
                                <a href="#local1"><h5>Experiências</h5></a>
                            </div>
                            <div class="col-md- local1">
                                <a href="#local2"><h5>SoftSkills</h5></a>
                            </div>
                        </div>
                        <p class="sub-h1 lightest-txt">Universidade Salvador - <span class="text-md-right" style="color: orange; font-size: 18px">Cursando 2º Sem.</span></p>
                        <p class="sub-h1 lightest-txt">Inicio em jan/2022  -  Conclusão em dez/2025</p>
                    </div>
                </div>  
                <div class="row lightest-txt">
                    <div class="col-md-2 py-5 text-center">
                        <img src="img/FotoClaudio.jpg" class="img-fluid rounded-circle" width="150px">
                    </div>
                    <div class="col-md-8">
                        <div class="col-md mt-5">
                            <p class="p1">
                                Durante a pandemia de Covid19 tive que tomar muitas decisões, uma delas foi vender a minha parte na empresa onde eu era sócio. Logo depois dessa decisão, comecei a pensar em outra saida para minha vida, foi então que idealizei um projeto. Elaborei um projeto cultural,
                                onde excrevi, aprovei e captei os recursos, além de executá-lo em 2022. Não satisfeito, eu mais uma vez tomei, e acho que foi a maior decisão da minha vida, parar tudo o que eu estava fazendo e estudar linguagem de programação. Voltei para faculdade para completar essa minha etapa da vida que havia deixado adormecida
                                e continuar o curso de Sistemas de Informação. Também comecei a fazer um curso em linguagem Python, mas hoje estou estudando Java, nivel avançado, pois me encantei com esta linguagem, além de outros cursos que faço como: SCROM, SpringBoot e Padrões de projetos.                                               

                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-3 pt-5 " id="local1">
            <div class="row">
                <div class="col text-center mt-2">
                    <button class="botao" id="exibir4"><h3>Experiencias</h></button>
                    <p class="p2">Minha jornada profissional.</p>
                </div>
            </div>
            <div class=" hide" id="quarto">
                <div class="row" >
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Meu Portfólio</h4>
                            </div>
                            <div class="text-center">
                                <p>nov /2022</p>
                                <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <p>Cargo: <b>Software Engineer</b></p>
                                <ul>
                                    <li>Criação do DataBase</li>
                                    <li>Criação das Classes</li>
                                    <li>Conexão com o DataBase</li>
                                    <li>Criação de Interface</li>
                                    <li>Criação daas operações CRUD</li>
                                    <li>Design das Pages</li>
                                </ul>
                            </div>
                            <section>
                                <div class="text-md-justify">
                                    <p>Esta implementação foi criada com a linguagem <b style="color: blue">Java</b>(<b> JSP e JDBC</b> ), uso do <b>Bootstrap, HTML, CSS, JavaScript</b> e versionamento no <b>GitHub</b>. Contruido através da <b>IDE Netbeans</b>. </p>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Portal Master Tecnology</h4>
                            </div>
                            <div class="text-center">
                                <p>jul - ago /2022</p>
                                <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <p>Cargo: <b>Software Engineer</b></p>
                                <ul>
                                    <li>Criação e Administração</li>
                                    <li>Criação do Banco de Dados</li>
                                    <li>Criação das Classes e Criação Crud</li>
                                    <li>Login Usuário com Flask_login</li>
                                    <li>Design das Pages</li>
                                    <li>Consumo de API</li>
                                </ul>
                            </div>
                            <section>
                                <div >
                                    <p>Esta implementação foi criada com a linguagem <b style="color: blue">Python</b>, Login de usuário com <b>Flask_login, Git, GitHub, HTML, CSS, JavaScript, Heroku.</b></p>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Projeto Cultural</h4>
                            </div>
                            <div class="text-center">
                                <p>fev /21 - jul /2022</p> <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <div class="col-md-12"> 
                                    <p>Cargo: <b>Coord. Geral e Produção do Projeto</b></p>
                                    <ul>
                                        <li>Idealização e elaboração do projeto</li>
                                        <li>Elaboração do projeto</li>
                                        <li>Escrever, registrar e acompanhar o projeto</li>
                                        <li>Captação de recurso</li>
                                        <li>Produção geral do projeto</li> 
                                        <li>Contratações de prestadores de serviços</li>
                                        <li>Gestão financeira</li>
                                        <li>Prestação de contas</li>
                                    </ul>
                                </div>
                            </div>
                            <section>
                                <div >
                                    <p>Este projeto teve o objetivo de levar cultura e dar oprtunidades aos artistas e trabalhadores do entretenimento a ter uma renda durante a pandemia.</p>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">As Divas do Tio Chico Cervejaria</h4>
                            </div>
                            <div class="text-center">
                                <p>jul/2018 - jan/2021</p>
                                <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <p>Cargo: <b>Sócio Gerente</b></p>
                                <ul>
                                    <li>Controle dos processos de produção;</li>
                                    <li>Criação das receitas</li>
                                    <li>Relacionamento com clientes</li>
                                    <li>Gerenciamento comercial;</li>
                                    <li>Controle Logístico de entregas e retiradas dos produtos e equipamentos</li>
                                </ul>
                            </div>
                            <section>
                                <div class="text-md-justify">
                                    <p>Esta implementação foi criada com a linguagem <b style="color: blue">Java</b>(<b> JSP e JDBC</b> ), uso do <b>Bootstrap, HTML, CSS, JavaScript</b> e versionamento no <b>GitHub</b>. Contruido através da <b>IDE Netbeans</b>. </p>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Portal Master Tecnology</h4>
                            </div>
                            <div class="text-center">
                                <p>jul - ago /2022</p>
                                <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <p>Cargo: <b>Software Engineer</b></p>
                                <ul>
                                    <li>Criação e Administração</li>
                                    <li>Criação do Banco de Dados</li>
                                    <li>Criação das Classes e Criação Crud</li>
                                    <li>Login Usuário com Flask_login</li>
                                    <li>Design das Pages</li>
                                    <li>Consumo de API</li>
                                </ul>
                            </div>
                            <section>
                                <div >
                                    <p>Esta implementação foi criada com a linguagem <b style="color: blue">Python</b>, Login de usuário com <b>Flask_login, Git, GitHub, HTML, CSS, JavaScript, Heroku.</b></p>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Projeto Cultural</h4>
                            </div>
                            <div class="text-center">
                                <p>fev /21 - jul /2022</p> <h6>Atividades Realizadas</h6>
                            </div>
                            <div class="row">
                                <div class="col-md-12"> 
                                    <p>Cargo: <b>Coord. Geral e Produção do Projeto</b></p>
                                    <ul>
                                        <li>Idealização e elaboração do projeto</li>
                                        <li>Elaboração do projeto</li>
                                        <li>Escrever, registrar e acompanhar o projeto</li>
                                        <li>Captação de recurso</li>
                                        <li>Produção geral do projeto</li> 
                                        <li>Contratações de prestadores de serviços</li>
                                        <li>Gestão financeira</li>
                                        <li>Prestação de contas</li>
                                    </ul>
                                </div>
                            </div>
                            <section>
                                <div >
                                    <p>Este projeto teve o objetivo de levar cultura e dar oprtunidades aos artistas e trabalhadores do entretenimento a ter uma renda durante a pandemia.</p>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div >
            <section>
                <div class="row">
                    <div class="col text-center">
                        <button class="botao" id="exibir5"><h3>SoftSkills</h3></button>
                        <p class="sub-h2">Saiba um pouco como sou.</p>
                    </div>
                </div>
                <div class="row ">
                    <div class=" container ">
                        <section >
                            <div class="container hide" id="quinto">
                                <img src="img/habilidade01.png" width="130" height="height" alt="Logo linguagem Java">
                                <img src="img/habilidade02.png" width="130" height="height" alt="Logo linguagem Python">
                                <img src="img/habilidade03.png" width="130" height="height" alt="Logo linguagem HTML">
                                <img src="img/habilidade04.png" width="130" height="height" alt="Logo linguagem CSS">
                                <img src="img/habilidade05.png" width="130" height="height" alt="Logo linguagem MySQL">
                                <img src="img/habilidade06.png" width="130" height="height" alt="Logo linguagem Flask">
                                <img src="img/habilidade07.png" width="130" height="height" alt="Logo linguagem BootStrap">
                                <img src="img/habilidade08.png" width="130" height="height" alt="Logo linguagem Git">
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </div>
        <div class="col text-center my-5" id="local2">
            <h2>Obrigado por acessar meu portfólio!</h2>
            <p class="sub-h2">Espero que tenha gostado. Volte quando quiser!</p>
            <a href="logout.jsp">
                <button class="btn btn-danger btn-md cta mr-1">
                    Fazer Logout <i class="mi mi-ChevronRight"></i>
                </button>
            </a>
            <a href="usuarios.jsp">
                <button class="btn-md btn-md cta ml-1">
                    Dê mais uma olhadinha!<i class="mi mi-ChevronRight"></i>
                </button>
            </a>
        </div>      
    </body>
</html>
