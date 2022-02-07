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

<form action="ServletCRUD" method="post">



		<c:choose>
			<c:when test="${ user == null }">
			<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5;
			border-radius: 11px; padding: 16px;">
			<div class="row justify-content-center">
             <h1 class=c>Adicionar Usuário</h1>
             
             
			     <div class="mb-3">
				<label for="exampleInput" class="form-label">Nome:</label>
				<input class="form-control" type="text" name="name" required/>
				 </div>
				
				
				<div class="mb-3">
				<label for="exampleInput" class="form-label">Email:</label>
				<input class="form-control" type="text" name="email"/>
				 </div>
				 
				 
				<div class="mb-3">
				<label for="exampleInput" class="form-label">País:</label>
				<input  class="form-control" type="text" name="pais"/>
				</div>
				
				<button class="btn btn-secondary col-2"  style="margin-bottom: 10px;" type="submit" name="option" value="insert">Salvar</button>
				</div>
				</div>
				
			 
				
				
			</c:when>
			<c:otherwise>
			
				<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5; border-radius: 11px; padding: 16px;">
			    <div class="row justify-content-center">
                 <h1 class=c>Alterar Dados</h1>
			
			
			
				<input type="hidden" name="id" value="${user.id}"/>
				
				
				<div class="mb-3">
				<label for="exampleInput" class="form-label">Nome:</label>
				<input  class="form-control"type="text" name="name" value="${user.nome}" required/>
			    </div>
			
				<div class="mb-3">
				<label for="exampleInput" class="form-label">Email:</label>
				<input  class="form-control" type="text" name="email" value="${user.email}"/>
				</div>
				
				<div class="mb-3">
				<label for="exampleInput" class="form-label">País:</label>
				<input  class="form-control" type="text" name="pais" value="${user.pais}"/>
				</div>
			  
				<button class="btn btn-secondary col-2"  style="margin-bottom: 10px;" type="submit" name="option" value="update">Atualizar</button>
				
				</div>
			    </div>
				
			</c:otherwise>
		</c:choose>
	</form>


</body>
</html>