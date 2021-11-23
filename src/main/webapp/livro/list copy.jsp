<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!-- Indica características e define o arquivo como um jsp do java e a codificação da página -->

<!DOCTYPE html><!-- Define o tipo do documento -->
<html><!-- tag html informar ao navegador a estrutura do site mais em baixo ela fecha /html -->
    <head><!--tag da "cabeca" ou cabecalho do nosso site mais em baixo ela fecha /head -->
        <meta charset="utf-8" /><!-- essa tag é usada possamos representar qualquer caractere de qualquer idioma -->
        <title>Novo Livro</title><!--titulo da barra do site -->
    </head>
    <body><!--tag corpo do site aqui estarão as informações visíveis para o usuário mais em baixo ela fecha /body -->
        <h1>Lista de livros. Elizabeth!</h1> <!--titulo do corpo do site -->
        <h1>Novo Livro</h1> <!--titulo do corpo do site -->
           <hr>
           <form action="insert" method="post"><!--tag form é um formulario onde o usuario ira adicionar suas informacoes -->
               <label for="titulo">titulo</label> <!--mostra nome do que ele deve inserir no caso o titulo do livro -->
               <input type="test" name="titulo"/><!--espaco onde ele deve inserir o tilulo -->
               <a href="/livro/list">Voltar</a><!--botao voltar com direcionamento livro/list -->
               <input type="submit" value+"Salvar"/> <!--botao salvar -->
           </form>
    </body>
</html>