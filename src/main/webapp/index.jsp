<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
 <header>
      <nav class="navbar navbar-expand-lg navbar-dark bg-danger mb-5">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Raia Drogasil</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Usuario</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
          
    </header>
 <br>
      <div class="container mt-5">
        <div class="row justify-content-center">
      <h1 class= col-4 >Lista de Usuários</h1>
      <hr>
      
<form action="ServletCRUD" method="post">
		<button class="btn btn-secondary col-2" style=" margin-bottom: 35px;font-weight: bold;" type="submit"  name="option" value="insertForm"> Adicionar usuário</button>
		
	</form>
	
		<table class="table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Email</th>
					<th>País</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usuario" items="${listUser}">
					<tr>
						<form action="ServletCRUD" method="post">
							<td>
								<c:out value="${usuario.id}"/>
								<input type="hidden" name="id" value="${usuario.id}"/>
							</td>
							<td><c:out value="${usuario.nome}"/></td>
							<td><c:out value="${usuario.email}"/></td>
							<td><c:out value="${usuario.pais}"/></td>
							<td>
							
							<div class="row" style="justify-content: space-evenly;margin-bottom:10px;">
							    <button  class="btn btn-secondary col-5" style="font-weight: bold;" type="submit" name="option" value="delete">Deletar</button>
							    <button class ="btn btn-secondary col-5" style="font-weight: bold;  "type="submit" name="option" value="updateForm">Atualizar</button> 
							    </div>
						
							</td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	


</body>
</html>