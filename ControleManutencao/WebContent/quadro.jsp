<%@page import="org.senai.contrManutencao.modelo.Quadro"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Controle de Manutenção</title>
</head>
<body>
<div class="container">
<div align="center"><img src="img/allia.jpg"
	height="240" width="400"/>
	<div align="center"/>
	<a href="gerenciarQuadro.jsp">Cadastrar Novo Chamado</a>
	

	
	<h1>Visualizar e Controlar Serviços</h1>
</div>
            
  
  <table class="table table-striped">
  
    <thead>
      <tr>
     
        <th width="25%">Descrição do Serviço<p></th>
		<th width="17%">Status<p></th>
		<th width="17%">Obs:<p></th> 
	    <th width="17%">Local<p></th> 
		<th width="17%">Responsavel<p></th>
		<th width="15%">Data Início<p></th>
		<th width="15%">Data Fim<p></th>
		
      </tr>
    </thead>
    <tbody>
      <script>
      
      function prepararEditar(cod){
      //alert("ediatar "+cod);
     window.location.replace('gerenciarQuadro.jsp?cod='+cod);
      }
      
      </script>
      
      <%
      Quadro quadro = new Quadro();
      
      for (Quadro p : quadro.getLista()) {
    	out.print("<tr onclick='prepararEditar("+p.getCod()+")'>");
    	////////////////////////////////////////////////////////////
    	//out.print("<td>"+p.getCod()+"</td>");
    	out.print("<td>"+ p.getDescricao()+"</td>");
    	out.print("<td class='"+p.getStatus()+"'>" + p.getStatus()+"</td>");
    	out.print("<td>"+ p.getObservacao()+"</td>");
    	out.print("<td>"+ p.getLocal()+"</td>");
    	out.print("<td>"+ p.getResponsavel()+"</td>");
    	out.print("<td>"+ p.getDtInicio()+"</td>");
    	out.print("<td>"+ p.getDtFim()+"</td>");
    	out.print("</tr>");
    	
      } 
      
      %>
    </tbody>
  </table>

</div>
</body>
</html>