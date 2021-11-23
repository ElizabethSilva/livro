<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!-- Indica características e define o arquivo como um jsp do java e a codificação da página -->
    <!DOCTYPE html><!-- Define o tipo do documento -->
    <html><!-- tag html informar ao navegador a estrutura do site mais em baixo ela fecha /html -->

    <head> <!--tag da "cabeca" ou cabecalho do nosso site mais em baixo ela fecha /head -->
        <meta charset="utf-8" /><!-- essa tag é usada possamos representar qualquer caractere de qualquer idioma -->
        <title>Deletar um Livro</title><!--titulo da barra do site -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
        crossorigin="anonymous"><!-- é um link para que possamos usar a estilizacao do bootstrap -->
    </head>

    <body><!--tag corpo do site aqui estarão as informações visíveis para o usuário mais em baixo ela fecha /body -->
        <main class="container"> <!--Tag main define o conteúdo principal dentro do corpo mais em baixo ela fecha /main -->
            <h1>Deletar um livro</h1><!--Titulo do corpo -->
            <hr>
            <p>Tem certeza que deseja deletar o livro<em>"${livro.titulo}"</em>?</p><!--Paragrafo do corpo e a tag em marca o texto que tem um destaque maior como o titulo do livro -->
            <form action="/livro/delete" method="post"><!--tag form é um formulario onde o usuario ira adicionar suas informacoes -->
                <input type="hidden" name="id" value="${livro.id}" /><!-- Cria um campo de texto que recebe o valor do id do livro -->


                <a href="/livro/list" class="btn btn-primary">Voltar</a> <!--Botao para voltar que direciona para livro/list mais em baixo ela fecha /form -->
                <input type="submit" value="Deletar" class="btn btn-secondary"></button> <!-- Define um valor fixo para a entrada de dados (excluir) -->
            </form>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script><!--Importação do bootstrap, Declara o separate -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" 
        crossorigin="anonymous"></script><!--Importação do bootstrap, Declara o separate -->
    </body>

    </html>