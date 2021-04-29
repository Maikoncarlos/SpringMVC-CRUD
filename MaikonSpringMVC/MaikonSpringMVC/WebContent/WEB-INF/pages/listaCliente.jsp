<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>listaCliente</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous">
		
	</script>
<body>

	<header> <nav
		class="navbar navbar-expand-lg navbar-dark bg-dark">

	<div class="container-fluid">

		<a class="col-ml-auto ">Lista de Clientes </a>

		<div class="row">
			<div class="col">

				<div class="collapse navbar-collapse" id="conteudoNavbarSupported">
					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a class="nav-link" href="paginaInicial">
								<i class="fas fa-user-plus"></i> Pagina Inicial
						</a></li>

						<li class="nav-item"><a class="nav-link" href="cliente">
								<i class="fas fa-user-plus"></i> Novo Cliente
						</a></li>

					</ul>
				</div>
			</div>


		</div>
	</nav> </header>


	<table class="table table-bordered">
		<tr>
			<th scope="col">Nome</th>
			<th scope="col">Cpf</th>
			<th scope="col">Telefone</th>
			<th scope="col">Endereço</th>
			<th scope="col">Descrição</th>
			<th scope="col">Profissão</th>
			<th scope="col">Rg</th>
			<th scope="col">Salário</th>
			<th scope="col">Data de Nascimento</th>
			<th scope="col">Ações</th>
		</tr>

		<c:forEach var="listValue" items="${clientes}">

			<tr>
				<td>${listValue.nome}</td>
				<td>${listValue.cpf}</td>
				<td>${listValue.telefone}</td>
				<td>${listValue.endereco}</td>
				<td>${listValue.descricao}</td>
				<td>${listValue.profissao}</td>
				<td>${listValue.rg}</td>
				<td>${listValue.salario}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy"
						value="${listValue.dataDB}" /></td>


				<td><a class="btn btn-danger" role="button"
					href="deletar/${listValue.cpf}">Deletar</a>&nbsp; &nbsp; <a
					class="btn btn-primary" role="button"
					href="alterar/${listValue.cpf}">Editar</a>&nbsp; &nbsp;</td>
			</tr>


		</c:forEach>

		</body>
</html>