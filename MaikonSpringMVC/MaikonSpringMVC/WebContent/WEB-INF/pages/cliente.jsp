<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Cadastro de Cliente</title>

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

	<div class="cantainer-fluid">

		<header>

			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

				<div class="container-fluid">

					<a class="col-ml-auto"><h3>Cadastro de Clientes</h3></a>

					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="row">
						<div class="col">

							<div class="collapse navbar-collapse"
								id="conteudoNavbarSupported">
								<ul class="navbar-nav ml-auto">

									<li class="nav-item"><a class="nav-link"
										href="paginaInicial"> <i class="fas fa-user-plus"></i>
											Pagina Inicial
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

	<form:form method="POST"
		action="${pageContext.servletContext.contextPath}/addCliente">
		<form class="needs-validation" novalidate>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<td><form:label path="nome" for="validationTooltip01">Nome:</form:label></td>
					<form:input path="nome" type="text" class="form-control"
						id="validationTooltip01" placeholder="digite seu nome completo" />

				</div>

				<div class="col-md-4 mb-3">
					<form:label path="cpf" for="validationTooltip02">Cpf:</form:label>
					<form:input path="cpf" type="text" class="form-control"
						id="validationTooltip02" placeholder="digite seu cpf" />

				</div>

				<div class="col-md-4 mb-3">
					<label for="validationTooltipUsername">Rg:</label> <input
						type="text" class="form-control" id="validationTooltip02"
						placeholder="digite seu rg" required>
				</div>

				<div class="form-row">
					<div class="col-md-4 mb-3">
						<label for="validationTooltip03">Endereço:</label> <input
							type="text" class="form-control" id="validationTooltip03"
							placeholder="digite seu endereço" required>

					</div>
					<div class="col-md-4 mb-3">
						<label for="validationTooltip04">Salário:</label> <input
							type="text" class="form-control" id="validationTooltip04"
							placeholder="digite seu salário" required>

					</div>

					<div class="col-md-4 mb-3">
						<label for="validationTooltip05">Telefone:</label> <input
							type="text" class="form-control" id="validationTooltip05"
							placeholder="digite seu telefone para contato" required>

					</div>

					<div class="col-md-4 mb-3">
						<label for="validationTooltip06">Profissão:</label> <input
							type="text" class="form-control" id="validationTooltip06"
							placeholder="Profissão" required>
						<div class="invalid-tooltip">Please provide a valid zip.</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="validationTooltip07">Descrição:</label> <input
							type="text" class="form-control" id="validationTooltip07"
							placeholder="descrição do seu cliente" required>
					</div>

					<div class="col-md-4 mb-3">
						<form:label path="dataNascimento" for="validationTooltip08">Data de Nascimento:</form:label>
						<form:input path="dataNascimento" type="text" class="form-control"
							id="validationTooltip08"
							placeholder="data de nascimento Ex:11/01/2021" />
					</div>


					<button class="btn btn-dark" type="submit">Salvar</button>
				</div>
		</form>
	</form:form>

</body>
</html>