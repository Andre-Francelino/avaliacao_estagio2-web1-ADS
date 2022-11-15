<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="br.com.desenvolvimentoweb1avaliacao2.Livro"%>
	<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Livros</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

	<div style="background-color:gray">
		
	</div>
	
	
	<%@include file = "/JSP/links_das_paginas.jsp"%>
	
	<h4 class="display-4 my-5 text-center">Lista de Livros Cadastrados </h4>
	<table class="table table-striped table-hover container">
  	<thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Titulo</th>
      <th scope="col">Autor</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="livro">
	    <tr>
	      <th scope="row">${livro.id}</th>
	      <td>${livro.titulo}</td>
	      <td>${livro.autor}</td>
	    </tr>	
		</c:forEach>
  </tbody>
	</table>

</body>
</html>

