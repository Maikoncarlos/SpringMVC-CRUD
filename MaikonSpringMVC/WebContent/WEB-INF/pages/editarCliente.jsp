<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>editarCliente</title>
</head>
<body>

	<center>

		<table width="100%" border="1" cellpadding="2" cellspacing="0">
			<tr>
				<th colspan="6">
					<h3>Editar Clientes</h3>
				</th>
				<form:form method="POST" action="${pageContext.servletContext.contextPath}/alterar/">
					<table>
						<tr>
							<td><form:label path="nome">Nome</form:label></td>
							<td><form:hidden path="cpf" value="${cliente.cpf}" /></td>
						</tr>
						<tr>
							<td><form:label path="nome">Nome</form:label></td>
							<td><form:input path="nome" value="${cliente.nome}" /></td>
						</tr>
						<tr>
							<td><form:label path="rg">RG:</form:label></td>
							<td><form:input path="rg" value="${cliente.rg}" /></td>
						</tr>
						<tr>
							<td><form:label path="endereco">Endereço:</form:label></td>
							<td><form:input path="endereco" value="${cliente.endereco}" /></td>
						</tr>
						<tr>
							<td><form:label path="salario">Salário:</form:label></td>
							<td><form:input path="salario" value="${cliente.salario}" /></td>
						</tr>
						<tr>
							<td><form:label path="telefone">Telefone:</form:label></td>
							<td><form:input path="telefone" value="${cliente.telefone}" /></td>
						</tr>
						<tr>
							<td><form:label path="profissao">Profissão:</form:label></td>
							<td><form:input path="profissao" value="${cliente.profissao}" /></td>
						</tr>
						<tr>
							<td><form:label path="descricao">Descrição</form:label></td>
							<td><form:input path="descricao" value="${cliente.descricao}" /></td>
						</tr>
						<tr>
							<td><form:label path="dataNascimento"> Data de Nascimento:</form:label></td>
							<td><form:input path="dataNascimento" value="${cliente.dataNascimento}" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="Alterar Cadatro" /></td>
						</tr>						
						
					</table>
					
				</form:form>			
				
	</center>
</body>
</html>