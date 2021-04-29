<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Exibe Detalhes do Cliente</title>

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
		crossorigin="anonymous"></script>

	<div class="cantainer--fluid">

		<header>

			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

				<div class="container-fluid">

					<a class="">
						<h3>Dados do Cliente</h3>

						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="row">
							<div class="col">
								<div class="collapse navbar-collapse"
									id="conteudoNavbarSupported">
									<ul class="navbar-nav ml-auto">

										<li class="nav-item"><a class="nav-link" href="cliente">
												<i class="fas fa-user-plus"></i> Novo Cliente
										</a></li>

										<li class="nav-item"><a class="nav-link" href="procurar">
												<i class="fas fa-search"></i> Pesquisar
										</a></li>

										<li class="nav-item"><a class="nav-link "
											href="listaClientes"> <i class="far fa-list-alt"></i>
												Listar Clientes
										</a></li>

									</ul>
								</div>
							</div>
			</nav>
		</header>

	</div>
	<!-- fiim da container -->


	<table>
		<c:if test="${not empty cliente}">


			<div class="container">
				<div class="row">

					<tr>
						<td>CPF:</td>
						<td class="col-4 p-2 border">${cliente.cpf}</td>
					</tr>

					<tr>
						<td>Nome:</td>
						<td class="col-4 p-2 border">${cliente.nome}</td>
					</tr>
					<tr>
						<td>RG:</td>
						<td class="col-4 p-2 border">${cliente.rg}</td>
					</tr>
					<td>RG:</td>
					<td class="col-4 p-2 border">${cliente.rg}</td>
					</tr>
					<td>SALÁRIO:</td>
					<td class="col-4 p-2 border">${cliente.rg}</td>
					</tr>
					<td>ENDEREÇO:</td>
					<td class="col-4 p-2 border">${cliente.endereco}</td>
					</tr>
					<td>PROFISSÃO:</td>
					<td class="col-4 p-2 border">${cliente.profissao}</td>
					</tr>
					<td>TELEFONE:</td>
					<td class="col-4 p-2 border">${cliente.telefone}</td>
					</tr>
					<td>DESCRIÇÃO:</td>
					<td class="col-4 p-2 border">${cliente.descricao}</td>
					</tr>
					<td>DATA DE NASCIMENTO:</td>
					<td class="col-4 p-2 border"><fmt:formatDate
							pattern="dd/MM/yyyy" value="${cliente.dataDB}" /></td>
					</tr>

				</div>
			</div>

		</c:if>

	</table>

</body>
</html>