<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java"
import="java.sql.*" errorPage="" %>

<html>
<head>
<style>
#fonte1
{
font-size: 35px;
}
#fonte2
{
font-size: 25px;
}
#dir
{
font-size: 15px;
text-align: right;
}
</style>
</head>
<body>
<br/>

<table style="width: 1000px; margin-left: 20px; color:#000000;" border="0" cellpadding="0" cellspacing="0">
<tr valign="top" align="center">
<td style="width: 10%; text-align: center;" valign="top" align="left"> 
	<img style="border-width: 0px; border-style: none;" alt="ime.png" src="/academic-devoir/css/ime.png" />
</td>
<td style="width: 80%; text-align: center;" valign="top" align="left"> 
	<div id="fonte1"> Academic Devoir</div><br/> 
	<div id="fonte2">Instituto de Matem&aacute;tica e Estat&iacute;stica <br/>
	Universidade de S&atilde;o Paulo </div> 


<c:choose>
<c:when test="${empty usuarioSession.usuario.nome}">
</c:when>
<c:otherwise>
<div id="dir"> 
<br/>
Voc&ecirc; acessou como ${usuarioSession.usuario.nome } (<a href="<c:url value='/login'/>">Sair</a>) 
</div>
</c:otherwise>
</c:choose>
   
</td>
</tr>
</table>
  
</body>
</html>