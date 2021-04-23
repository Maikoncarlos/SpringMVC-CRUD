<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Cadastro de Cliente</title>
</head>
<body>

<h2>Formulário de Cadastro de Cliente</h2>
<h3>${msg}</h3>

<form:form method="POST" action="${pageContext.servletContext.contextPath}/addCliente">
   <table>
    <tr>
        <td><form:label path="nome">Nome</form:label></td>
        <td><form:input path="nome"/></td>
    </tr>
    <tr>
        <td><form:label path="cpf">CPF:</form:label></td>
        <td><form:input path="cpf" /></td>
    </tr>
    <tr>
        <td><form:label path="rg">RG:</form:label></td>
        <td><form:input path="rg" /></td>
    </tr>
    <tr>
        <td><form:label path="endereco">Endereço:</form:label></td>
        <td><form:input path="endereco" /></td>
    </tr>
    <tr>
        <td><form:label path="salario">Salário:</form:label></td>
        <td><form:input path="salario" /></td>
    </tr>
    <tr>
        <td><form:label path="telefone">Telefone:</form:label></td>
        <td><form:input path="telefone" /></td>
    </tr>
    <tr>
        <td><form:label path="profissao">Profissão:</form:label></td>
        <td><form:input path="profissao" /></td>
    </tr>
    <tr>
        <td><form:label path="descricao">Descrição</form:label></td>
        <td><form:input path="descricao" /></td>
    </tr>
     <tr>
        <td><form:label path="dataNascimento"> Data de Nascimento:</form:label></td>
        <td><form:input path="dataNascimento" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Cadastar Novo Cliente"/>
        </td>
    </tr>
</table>
</form:form>
<a href="listaClientes">Listar Todos Clientes</a>&nbsp;|&nbsp;
<a href="paginaInicial">Pagina Inicial</a>

</body>
</html>