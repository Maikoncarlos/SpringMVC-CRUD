
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>index</title>

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


</head>
	<body>

		<div class="cantainer--fluid">

	<header> 
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		 <div class="container-fluid">
		 
		 <a class=""> <h3>Sistema de Clientes</h3>
		
						<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="row">
   				 <div class="col">
			<div class="collapse navbar-collapse" id="conteudoNavbarSupported">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><a class="nav-link" href="cliente"> <i
							class="fas fa-user-plus"></i> Novo Cliente
					</a></li>

					<li class="nav-item"><a class="nav-link" href="procurar">
							<i class="fas fa-search"></i> Pesquisar
					</a></li>

					<li class="nav-item"><a class="nav-link " href="listaClientes">
							<i class="far fa-list-alt"></i> Listar Clientes
					</a></li>

				</ul>
			</div>
		</div>
		</nav>
		 </header>

	</div>	<!-- fiim da container -->

</body>
</html>