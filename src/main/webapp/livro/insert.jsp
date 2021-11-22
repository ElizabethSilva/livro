<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>  // tag html mais em baixo ela fecha /html
    <head> //tag da cabeca do nosso site mais em baixo ela fecha /head
        <meta charset="utf-8" /> // essa tag é usada possamos representar qualquer caractere de qualquer idioma
        <title>Novo Livro</title> //titulo da barra do site
        //na linha 9 é um link para que possamos usar a estilizacao do bootstrap
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body> //tag corpo do site mais em baixo ela fecha /body
       <h1>Novo Livro</h1>  //Titulo do corpo
           <hr>
           <form action="insert" method="post"> //aqui e´criado um formulario onde o usuario ira adicionar suas informacoes  
               <label for="titulo">Título</label> //nome do que ele deve inserir
               <input type="text" name="titulo"/> //espaco onde ele deve inserir
               <a href="/livro/list" class="btn btn-secondary">Voltar</a> //botao voltar com direcionamento livro/list
               <input type="submit" value="Salvar" class="btn btn-warning"/> //botao salvar
           </form>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>