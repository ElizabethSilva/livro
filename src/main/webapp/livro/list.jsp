<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!-- Indica características e define o arquivo como um jsp do java e a codificação da página -->
    <%@ taglib uri="http:<!--java.sun.com/jsp/jstl/core" prefix="c" %> <!-- importando bibliotecas para o documento jsp -->
        <!DOCTYPE html><!-- Define o tipo do documento -->
        <html> <!--tag html informar ao navegador a estrutura do site mais em baixo ela fecha /html -->

        <head> <!--tag da "cabeca" ou cabecalho do nosso site mais em baixo ela fecha /head -->
            <meta charset="utf-8" /> <!-- essa tag é usada possamos representar qualquer caractere de qualquer idioma -->
            <title>Livros</title> <!-- titulo da barra do site -->
            <link href="https:<!--cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous"> <!-- é um link para que possamos usar a estilizacao do bootstrap -->

        </head>

        <body> <!--tag corpo do site aqui estarão as informações visíveis para o usuário mais em baixo ela fecha /body -->
            <h1>Lista de livros, Elizabeth.</h1> <!--Titulo do corpo -->

            <main class="container"> <!--Tag main define o conteúdo principal dentro do corpo mais em baixo ela fecha /main -->
                /main
                <h1>Livros!</h1> <!--Subtitulo -->
                <a href="/livro/insert" class="btn btn-outline-info">Novo livro</a> <!--Botao para novo livro que direciona para livro/insert -->
                <table> <!--Tabela -->
                    <tr><!-- Anuncia o ínicio de uma linha da tabela -->
                        <th>ID</th> <!--Titulo da coluna -->
                        <th>Título</th> <!--Titulo da coluna -->
                    </tr>
                   <c:forEach var="l" items="${livros}"> <!-- tag responsável buscar todos os livros presentes na base de dados e aplicar a todos eles as pŕoximas tags (uma espécie de loop)E no items informamos qual a tabela ${livros} mais em baixo a ela fecha /c:forEach-->
                        <tr>
                            <!--para adicionar um campo dentro do banco de dados colocar o sinal de dolar -->
                            <!-- todos os <td> = Define uma célula da tabela -->
                            <td>${l.id}</td> <!--Campos da tabela -->
                            <td>${l.titulo}</td> <!--Campos da tabela -->
                            <td>
                                <!--Botao para atualizar livro que direciona para livro/update -->
                                <a href="/livro/update/${l.id}" class="btn btn-outline-success">Atualizar livro</a>
                            </td>
                            <td>
                                <a href="/livro/delete/${l.id}" class="btn btn-outline-danger">Deletar livro</a> <!--Botao para deletar livro que direciona para livro/delete -->
                            </td>

                        </tr>

                    </c:forEach>
                </table>
                
                <script src="https:<!--cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
                    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
                    crossorigin="anonymous"></script> <!-- Importação do bootstrap, Declara o separate -->
                <script src="https:<!--cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
                    crossorigin="anonymous"></script> <!-- Importação do bootstrap, Declara o separate -->
            </main>
        </body>

        </html>