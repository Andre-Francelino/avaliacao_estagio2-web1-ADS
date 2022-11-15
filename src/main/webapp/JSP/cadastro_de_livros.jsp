<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Livros</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<%@include file = "/JSP/links_das_paginas.jsp"%>
	<h4 class="text-center display-4 mt-5">Dar entrada em novos livros</h4>
	<form action="../servletLivros" method="post"  class="container mt-5">
	<input type="hidden" value="<%=request.getParameter("url")%>" name="url">
	
	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">ID</label>
    	<input name="id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  	</div>
	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Título</label>
    	<input name="titulo" type="text" class="form-control" id="titulo" aria-describedby="emailHelp">
  	</div>
	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Autor</label>
    	<input name="autor" type="text" class="form-control" id="autor" aria-describedby="emailHelp">
  	</div>
  	
	<button type="submit" class="btn btn-primary">Gravar Dados</button>
	</form>
	
</body>
</html>
