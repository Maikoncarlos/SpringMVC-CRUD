<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>listaCliente</title>
</head>
<body>

	<center>

		<table width="100%" border="3" cellpadding="3" cellspacing="2">
			<tr>
				<th colspan="4">
					<h3>Lista de Clientes</h3>
				</th>
		</table>
		<table width="100%" border="1" cellpadding="3" cellspacing="1">
			<tr>

				<td>Nome</td>
				<td>CPF</td>
				<td>Telefone</td>
				<td>Endereço</td>
				<td>Descrição</td>
				<td>Profissão</td>
				<td>RG</td>
				<td>Salário</td>
				<td>Data de Nascimento</td>
				<td>Acoes</td>

			</tr>


			<c:forEach var="listValue" items="${clientes}">
				<table width="100%" border="1" cellpadding="2" cellspacing="0">

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
						<td><a href="deletar/${listValue.cpf}"> Deletar</a>&nbsp;|&nbsp;
							<a href="alterar/${listValue.cpf}"> Editar</a>&nbsp;|&nbsp;</td>
					</tr>

				</table>
			</c:forEach>
			
			<tr><br/>
				<td><a href="cliente"> Voltar para Cadastro</a>&nbsp;|&nbsp;
				 <a href="paginaInicial">Pagina Inicial</a>&nbsp;|&nbsp;</td>
			</tr>
		</table>
	</center>
</body>
</html>