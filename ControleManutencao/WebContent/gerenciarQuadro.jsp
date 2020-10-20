<%@page import="org.senai.contrManutencao.modelo.Quadro"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Gerenciar Quadro</title>
</head>
<body>

	<script type="text/javascript">
	
	function dadosForm() {
		var dados = "";		
		dados += "descricao="+document.getElementById("descricao").value;
		dados += "&status="+document.getElementById("status").value;
		dados += "&obs="+document.getElementById("obs").value;
		dados += "&local="+document.getElementById("local").value;
		dados += "&responsavel="+document.getElementById("responsavel").value;
		dados += "&cod="+document.getElementById("cod").value;
		dados += "&dtInicio="+document.getElementById("dtInicio").value;
		dados += "&dtFim="+document.getElementById("dtFim").value;
		
		//alert(dados);
		return dados;
	}
		function gravar() {
			
			
			
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			       var msg = xhttp.responseText;
			       document.getElementById("msg").innerHTML = msg;
			       if(msg == "Gravado com sucesso"){
			    	   document.getElementById("msg").className = "alert alert-info";
			       }else{
			    	   document.getElementById("msg").className = "alert alert-danger";
			       }
			    }
			};
			xhttp.open("GET", "servletQuadro?"+dadosForm(), true);
			xhttp.send();
			
		}
		
		function apagar(){
			
			if(confirm("Realmente deseja Apagar esse registro?")){
			
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			       var msg = xhttp.responseText;
			       document.getElementById("msg").innerHTML = msg;
			       
			       
			       if(msg == "Gravado com sucesso"){
			    	   document.getElementById("msg").className = "alert alert-info";
			    	   document.getElementById("msg").innerHTML = "informação apagada";
			    	   document.getElementById("formulario").reset();
			    	   
			       }else{
			    	   document.getElementById("msg").className = "alert alert-danger";
			    	   document.getElementById("msg").innerHTML = "Erro ao apagar";
			       }
			    }
			};
			xhttp.open("GET", "servletQuadro?"+dadosForm()+"&apagar", true);
			xhttp.send();
			
		}
			
			
					
		}
		
		function novo(){			
			window.location.replace('gerenciarQuadro.jsp');
		}
		
		 function painel(){			
				window.location.replace('quadro.jsp');
			}
	</script>


	<%
		// objeto que vai ser utilizado
		Quadro quadro = new Quadro();

		if (request.getParameter("cod") != null) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			// busca o quadro informado na url
			quadro = quadro.getQuadro(cod);
		}
	%>
	<p>
	<div class="container" align="center">
		<img src="img/allia.jpg" height="240" width="400" />
		<p>
		
		
		
		<h2 align="center">Cadastrar Novo Chamado</h2>
		<form id="formulario">
			<input type="hidden" value="<%out.print(quadro.getCod());%>" id="cod" />


			<div id="msg"></div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="nome">Descrição do Serviço:</label> <input type="text"
						class="form-control" id="descricao"
						value="<%out.print(quadro.getDescricao());%>"
						placeholder="Descrição do Serviço" name="descricao">
				</div>
				<p>
				<div class="form-group col-md-3">
					<label for="Status">Status:</label> <select class="form-control"
						id="status">
						<option>Agendado</option>
						<option>Em andamento</option>
						<option>Parado</option>
						<option>Concluído</option>
					</select>

					<script>
					document.getElementById("status").value = "<%out.print(quadro.getStatus());%>";
					</script>


				</div>

				<div class="form-group col-md-3">
					<label for="obs">Observação:</label> <input type="text"
						class="form-control" value="<%out.print(quadro.getObservacao());%>"
						id="obs" placeholder="Insira Observações">

				</div>
			</div>

			<div class="form-row">

				<div class="form-group col-md-3">
					<label for="local">Local:</label> <input type="text"
						class="form-control" value="<%out.print(quadro.getLocal());%>"
						id="local" placeholder="Apartamento ou Setor">
				</div>





				<div class="form-group col-md-3">
					<label for="responsavel">Responsável:</label> <input type="text"
						class="form-control"
						value="<%out.print(quadro.getResponsavel());%>" id="responsavel">
				</div>


				<div class="form-group col-md-3">
					<label for="local">Data Início :</label> <input type="date"
						class="form-control" value="<%out.print(quadro.getDtInicio());%>"
						id="dtInicio">
				</div>
				<div class="form-group col-md-3">
					<label for="local">Data Fim:</label> <input type="date"
						class="form-control" value="<%out.print(quadro.getDtFim());%>"
						id="dtFim">
				</div>
			</div>
			<button type="button" class="btn btn-secondary" onclick="novo()">Novo</button>
			<button type="button" class="btn btn-primary" onclick="gravar()">Gravar</button>
			<button type="button" class="btn btn-danger" onclick="apagar()">Apagar</button>
	        <button type="button" class="btn btn-primary" onclick="painel()">Painel</button>
		</form>
	</div>


</body>
</html>