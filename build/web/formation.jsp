<%-- 
    Document   : formation
    Created on : 11/11/2022, 13:44:48
    Author     : ccari
--%>

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
        <title>Portfolio de Cláudio Carigé, formação acadêmica e cursos e HardSkills.</title>
        <link href="css/styleformation.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/gh/nespero/fluent-kit@1.2.0/js/fluent-kit.min.js"></script>
        <script src="js/jquery-3.6.1.min.js"></script>
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
                    <a href="logout.jsp"><img src="./img/logout.png" width="25" alt="Icone do Logout"/></a> 
                </div>
            </nav>
        </section>
        <div class="container-fluid middle-bg py-5">
            <div class="container ">
                <div class="row pt-5">

                    <div class="col-md-12">
                        <div class="row head-a">
                            <div class="col-md-9">
                                <h1 class="bold lightest-txt">UNIFACS</h1>
                            </div>
                            <div class="col-md-2 local1">
                                <a href="#local1">Cursos</a>
                            </div>
                            <div class="col-md- local1">
                                <a href="#local2">HardSkills</a>
                            </div>
                        </div>
                        <p class="sub-h1 lightest-txt">Universidade Salvador - <span class="text-md-right" style="color: orange; font-size: 18px">Cursando 2º Sem.</span></p>
                        <p class="sub-h1 lightest-txt">Inicio em jan/2022  -  Conclusão em dez/2025</p>
                    </div>
                </div>  
                <div class="row lightest-txt">
                    <div class="col-md-3 py-5 text-center">
                        <img src="img/FotoClaudio.jpg" class="img-fluid rounded-circle" width="150px" alt="Foto de Cláudio Carigé">
                    </div>
                    <div class="col-md-9">
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
                    <button class="botao" id="exibir1">Cursos</button>
                    <p class="sub-h2">Uma grande Paixão</p>
                    <p class="p2"></p>
                </div>
            </div>
            <div class=" hide" id="primeiro">
                <div class="row" >
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color:#3d009e">Programa Start<span style="color: blue"> Capgemini</samp></h4>
                            </div>
                            <div class="text-center">
                                <p>Online - set - out /2022</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6"> 
                                    <ul>
                                        <li>Java</li>
                                        <li>HTML</li>
                                        <li>Css</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul>
                                        <li>Java Web</li>
                                        <li>JavaScript</li>
                                        <li>Angular</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">UDEMY</h4>
                            </div>
                            <div class="text-center">
                                <p>Online - out /2022</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6"> 
                                    <ul>
                                        <li>Java Avançado</li>
                                        <li>Interface</li>
                                        <li>Lambda</li>
                                        <li>Java-JSP</li>
                                        <li>JavaFx</li>
                                        <li>JPA</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul>
                                        <li>SCRUM</li>
                                        <li>API Restful</li>
                                        <li>Spring Boot</li>
                                        <li>Padrões de projeto em Java</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Hastag Treinamentos</h4>
                            </div>
                            <div class="text-center">
                                <p>Online - mai - ago /2022</p><h4>PYTHON</h4>
                            </div>
                            <div class="row">
                                <div class="col-md-4"> 
                                    <ul>
                                        <li>Pandas</li>
                                        <li>Flask</li>
                                        <li>POO</li>
                                        <li>APIs</li>
                                    </ul>
                                </div>
                                <div class="col-md-8">
                                    <ul>
                                        <li>Arqivos CSV</li>
                                        <li>Integração com Excel</li>
                                        <li>Integração com PDF</li>
                                        <li>Integração com ArcGIS</li>
                                        <li>Arquivos JSON</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Digital Innovation One</h4>
                            </div>
                            <div class="text-center">
                                <p>Online - jul - ago /2022</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6"> 
                                    <ul>
                                        <li>JavaScript básico</li>
                                        <li>HTML básico</li>
                                        <li>CSS básico</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">English LIve</h4>
                            </div>
                            <div class="text-center">
                                <p>Online - jul/2022</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6"> 
                                    <ul>
                                        <li>curso de Inglês</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card mb-4">
                        <div>
                            <div class="text-center">
                                <h4 style="color: #3d009e">Curso Viver de Arte</h4>
                            </div>
                            <div class="text-center">
                                <p>Online - abr/2020</p>
                            </div>
                            <div class="row">
                                <div class="col-md-12"> 
                                    <ul>
                                        <li>Curso de gestão e captação de recursos para projetos com leis de Incentivos Fiscais</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div >
            <div id="local2"></div>
            <div class="row" >
                <div class="col text-center ">
                    <button class="botao" id="exibir2">HardSkills</button>
                    <p class="sub-h2">Linguagens e Ferramentas</p>
                    <p class="p2"></p>
                </div>  
            </div>
            <section class="hardskills">
                <div class="container hide" id="segundo" >
                    <img src="img/logojava.png" width="91" height="height" alt="Logo marca da linguagem Java">
                    <img src="img/logopython.png" width="91" height="height" alt="Logo marca da linguagem Python">
                    <img src="img/logohtml.png" width="91" height="height" alt="Logo marca da linguagem HTML">
                    <img src="img/logocss.png" width="91" height="height" alt="Logo marca da linguagem CSS">
                    <img src="img/logomysql.png" width="91" height="height" alt="Logo marca do Banco de dados MySQL">
                    <img src="img/logoflask.png" width="91" height="height" alt="Logo marca da ferramenta Flask">
                    <img src="img/logobootstrap.png" width="91" height="height" alt="Logo marca da ferramenta BootStrap">
                    <img src="img/logogit.png" width="91" height="height" alt="Logo marca da ferramenta Git">
                    <img src="img/logogithub.png" width="91" height="height" alt="Logo marca da ferramenta GitHut">
                    <img src="img/logojavascript.png" width="91" height="height" alt="Logo linguagem JavaScript">
                    <img src="img/logojquery.png" width="91" height="height" alt="Logo marca da linguagem JQuery">
                </div>
            </section>

            <div class="row">
                <div class="col text-center" id="button-formation">
                    <button class="botao" id="exibir3">Contato</button>
                    <p class="sub-h2">Onde me encontrar.</p>
                </div>
            </div>
            <div class="row " >
                <div class="col-md-4 hide" id="terceiro">
                    <ul class="list-view">
                        <li class="group-name"><span style="font-size: 22px; ">Endereço:</span></li>
                        <li>
                            <strong class="lead">Rua Estevam Barbosa Alves,</strong></br>
                            <span class="follow">nº 12, Qd.F</span>
                            <span class="follow">Itapuã, </span>
                        </li>
                        <li class="group-name">Salvador /BA - Brasil</li>
                        <li>
                            <strong class="lead">
                                <!-- <i class="mi mi-Phone"></i> -->
                                +55 71 9 91125697
                            </strong>
                            <span class="follow">
                                <!-- <i class="mi mi-twitter"></i> -->
                                <em></em>
                            </span>
                            <span class="follow">
                                <li class="group-name">Salvador /BA - Brasil</li>
                                <li class="group-name"><a href="https://www.linkedin.com/in/claudio-carige-b7429b6b/" target="_blank" ><i class="mi mi-linkedin">Linkedin</i></a></li>
                                <em><a class="mi mi-github" target="_blank" href="https://github.com/claudiocarige">GitHub</a> Mayweather</em>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="col text-center my-5">
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
        <script>
            $(document).ready(function () {
                var i = 0;
                $("#exibir1").click(function () {
                    i++;
                    if (i === 1 || i % 2) {
                        $("#primeiro").toggle("hide").fadeIn(6000);

                    } else {
                        $("#primeiro").toggle("hide").fadeOut(6000);
                    }
                });
                var j = 0;
                $("#exibir2").click(function () {
                    j++;
                    if (j === 1 || j % 2) {
                        $("#segundo").toggle("hide").fadeIn(6000);
                    } else {
                        $("#segundo").toggle("hide").fadeOut(6000);
                    }
                });
                var t = 0;
                $("#exibir3").click(function () {
                    t++;
                    if (t === 1 || t % 2) {
                        $("#terceiro").toggle("hide").fadeIn(6000);
                    } else {
                        $("#terceiro").toggle("hide").fadeOut(6000);
                    }
                });
            });
        </script>

    </body>
</html>
