<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!-- Indica características e define o arquivo como um jsp do java e a codificação da página -->

<!DOCTYPE html> <!-- Define o tipo do documento -->
<html> <!-- tag html mais em baixo ela fecha /html -->
    <head> <!--tag da "cabeca" ou cabecalho do nosso site mais em baixo ela fecha /head -->
        <meta charset="utf-8" /> <!-- essa tag é usada possamos representar qualquer caractere de qualquer idioma -->
        <title>Novo Livro</title> <!--titulo da barra do site -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!-- é um link para que possamos usar a estilizacao do bootstrap -->

    </head>
    <body> <!--tag corpo do site aqui estarão as informações visíveis para o usuário mais em baixo ela fecha /body -->
       <h1>Novo Livro</h1>  <!--Titulo do corpo -->
           <hr><!-- Mostra uma linha no documento -->
           <form action="insert" method="post"> <<!--tag form é um formulario onde o usuario ira adicionar suas informacoes -->
               <label for="titulo">Título</label> <!--mostra nome do que ele deve inserir no caso o titulo do livro -->
               <input type="text" name="titulo"/> <!--espaco onde ele deve inserir o tilulo -->
               <a href="/livro/list" class="btn btn-secondary">Voltar</a> <!--botao voltar com direcionamento livro/list -->
               <input type="submit" value="Salvar" class="btn btn-warning"/> <!--botao salvar -->
           </form>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
  integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" 
  crossorigin="anonymous"></script><!--Importação do bootstrap, Declara o separate -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
  integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" 
  crossorigin="anonymous"></script><!--Importação do bootstrap, Declara o separate -->

    </body>
</html>