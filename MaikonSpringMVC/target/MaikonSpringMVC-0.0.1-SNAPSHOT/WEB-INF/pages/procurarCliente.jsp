<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<html>
<head>
<title>Cadastro de Cliente</title>
</head>
<body>

	<h2>Pesquisa de Clientes</h2>
	<h3>${msg}</h3>
	
	<form:form method="POST" action="${pageContext.servletContext.contextPath}/mostrarCliente">
		<table>
			<tr>
				<td><form:label path="cpf">CPF:</form:label></td>
				<td><form:input path="cpf" /></td>
			</tr>

			<td colspan="2"><input type="submit" value="Pesquisar" /></td>

		</table>
	</form:form>

	<a href="listaClientes">Listar Todos Clientes</a>&nbsp;|&nbsp;
	<a href="paginaInicial">Pagina Inicial</a>
	<br />


</body>
</html>