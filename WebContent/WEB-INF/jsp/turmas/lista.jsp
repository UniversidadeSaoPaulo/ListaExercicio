<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>Academic Devoir</h1>
<h2>Grupo 1 - Engenharia de Software</h2>
</head>
<style type="text/css">
body
{
background-color:#f0ecc6;
}
h1 
{
color: black;
text-align: center;
font-size: 40px;
font-family:"Times New Roman";
font-style: italic;
font-variant: small-caps;
}
h2
{
color: black;
text-align: center;
font-size: 20px;
font-family:"Times New Roman";
}
h4
{
color: black;
text-align: center;
font-family:"Times New Roman";
}
</style>
<body>
	<h4>Lista de Turmas</h4>
	<table>
    <thead>
        <tr>
        <th>id</th>
        <th>Nome</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${turmaDao.lista}" var="turma">
            <tr>
                <td>${turma.id}</td>
                <td>${turma.nome}</td>
            </tr>
        </c:forEach>
        <form action='cadastro'>
        	<input type="submit" value="Inserir"/>
        </form>
        <form action='alteracao'>
        	<input type="submit" value="Alterar"/>
        </form>
        <form action='remocao'>
        	<input type="submit" value="Excluir"/>
        </form>
        <form action='home'>
        	<input type="submit" value="Voltar"/>
        </form>
    </tbody>
</table>
	
</body>
</html>