<%-- 
    Document   : experience
    Created on : 10/11/2022, 23:21:36
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
        <title>Portfolio de Cláudio Carigé, sobre mim.</title>
        <link href="css/stylesobremim.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.6.1.min.js"></script>
    </head>
    <body>
        <div class="container portfolio hide" id="opcao1">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">				
                        <h5>Software Engineer</h5> 
                    </div>
                </div>	
            </div>
            <div class="bio-info">
                <div class="row">
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="bio-image">
                                    <img src="img/FotoClaudio.jpg" alt="Foto de Cláudio Carigé" />
                                </div>			
                            </div>
                        </div>	
                    </div>
                    <div class="col-md-9">
                        <div class="bio-content">
                            <h1>Olá, sou Cláudio Carigé</h1>
                            <h6>Um lutador incansável na vida.</h6> 
                            <h6>Atualmente estou buscando uma oportunidade para meu crescimento.</h6>  
                            <h6>Humildade, honestidade, integridade, determinação, resiliência, persistência e paciência são algumas de minhas qualidades.</h6>  
                            <h6>Estou refazendo meus passos, voltando ao início, para trilhar uma nova jornada de sucesso no universo da Tecnologia.</h6> 
                            <h6>A resiliência me faz um ser humano que se reinventa a cada dia.</h6> 
                            <h6>Já fui motorista, cantor de banda, assistente de importação, empreendedor e mais algumas coisinhas...</h6> 
                            <h6>Fui Coordenador e produtor cultural dos meus próprios projetos, onde idealizei, escrevi e executei neste ano de 2022. Cheguei captar R$ 80.000,00 em patrocínio.</h6> 
                            <h6>Atualmente estou focado, estudando para entrar de fato na área da technologia.</h6> 
                            <h6>Com disciplina, persistência e determinação, vou alcançar meus objetivos.</h6> 
                            <h6>Não fujo do problema, eu IMPROVISO, ADAPTO, PERSISTO e SUPERO!</h6> 
                            <h6>Hoje entendo que a vida já é uma grande conquista e um grande aprendizado, pequenas coisas que conquistamos se tornam grandes conquistas.</h6> 
                            <h6>Me sinto um privilegiado por poder recomeçar, do zero, e entrar nesse novo mundo Technológico.</h6> 
                            <p>Sou um apaixonado por programação.</p>
                        </div>
                    </div>
                </div>	
                <a  id="voltar">Voltar</a>
            </div>
        </div>
        <footer>
            &COPY;2022 - Cláudio Carigé
        </footer>
        <script>
            $(document).ready(function () {
                $("#opcao1").toggle("hide").fadeIn(12000);
                $("#voltar").click(function () {
                    $("#opcao1").toggle("hide").fadeOut(2000);                   
                    location.href ="usuarios.jsp";
                });
            });
        </script>
    </body>
</html>

