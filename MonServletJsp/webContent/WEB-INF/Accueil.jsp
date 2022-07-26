<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.monservlet.beans.Utilisateurs" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<%-- <%
if(session.getAttribute("nom")==null){
	response.sendRedirect("/../Inscrire.jsp");
}
%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
<div class="Container">
	<p>Bienvenu <strong>${prenom}</strong> <strong>${nom}</strong>  </p>
	<form method="post" action="Monservlet2">
		<div>
		<input type="submit" value="Deconnecter">
		</div>	
	</form>
	
	<table>
	<%
		HttpSession ses=request.getSession();
		List<Utilisateurs> users = (ArrayList<Utilisateurs>)ses.getAttribute("list");
		for(Utilisateurs user : users)
		{	
	%>
	  <tr>
	    <th>Nom</th>
	    <th>Prenom</th>
	    <th>Pseudo</th>
	    <th>Email</th>
	  </tr>
	  <tr>
	    <td><% out.print(user.getNom()); %></td>
	    <td><% out.print(user.getPrenom()); %></td>
	    <td><% out.print(user.getPseudo());%></td>
	    <td><% out.print(user.getEmail()); %></td>
	  </tr>
	 <%
		}
    %>
	</table>

</div>

</body>
</html>