<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Produto</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 5%; margin-right: 5%;">
	<c:import url="../naveg/cabecalho.jsp" />
	


	<jsp:useBean id="dao" class="br.com.mnp.iadenp.model.CongregacaoDao" />

	<hr>
	<h3>Filtro Produtos</h3>
	<hr>
	<div>
		<form action="filter">
			<div class="form-group">
				<label for="inputId">ID</label> <input type="text"
					id="inputId" class="form-control" name="id"
					style="width: 100px;" maxlength="5" />
			</div>
			<div class="form-group">
				<label for="inputLocalidade">Localidade</label> <input type="text"
					id="inputLocalidade" class="form-control" name="localidade"
					style="width: 500px;" maxlength="100" />
			</div>
			<div class="form-group">
				<button type="reset" class="btn btn-default">&nbsp; Limpar
					&nbsp;</button>
				&nbsp;
				<button type="submit" class="btn btn-primary">&nbsp;
					Filtrar &nbsp;</button>
			</div>
		</form>
	</div>

	<hr>
	<h3>Listagem de Congrega��es</h3>
	<hr>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">ID</th>
				<th scope="col">Localidade</th>
				<th scope="col">�rea</th>
				<th scope="col">Endere�o</th>
				<th scope="col">Comiss�o</th>
				<th scope="col">Mocidade</th>
				<th scope="col">Crian�as</th>
				<th scope="col">Vocal</th>
				<th scope="col">Campanha</th>
				<th scope="col">Informa��es</th>
				<th scope="col">Contato</th>
				<th scope="col">Dias de culto</th>
			    <th scope="col">Eventos</th>
			    <th scope="col">Respons�vel Local</th>
			    <th scope="col">Foto da Congrega��o</th>
			    
			    
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="produto" items="${dao.listar()}">
				<tr>
					<th>#</th>
					<c:choose>
						<c:when test="${not empty congrega��o.codigo }">
							<td scope="row">${congrega��o.codigo}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> ID n�o informado</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${not empty congrega��o.localidade }">
							<td scope="row">${congrega��o.localidade}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Local n�o informado</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${not empty congrega��o.area }">
							<td scope="row">${congrega��o.area}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> �rea n�o informada</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${not empty congrega��o.endereco }">
							<td scope="row">${congrega��o.endereco}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Endere�o n�o informado</td>
						</c:otherwise>
					</c:choose>
					
						<c:choose>
						<c:when test="${not empty congrega��o.comissao }">
							<td scope="row">${congrega��o.comissao}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Comiss�o n�o informada</td>
						</c:otherwise>
					</c:choose>
					
						<c:choose>
						<c:when test="${not empty congrega��o.mocidade }">
							<td scope="row">${congrega��o.mocidade}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Mocidade n�o informada</td>
						</c:otherwise>
					</c:choose>
					
					
						<c:choose>
						<c:when test="${not empty congrega��o.criancas }">
							<td scope="row">${congrega��o.criancas}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Crian�as n�o informado</td>
						</c:otherwise>
					</c:choose>
					
					
						<c:choose>
						<c:when test="${not empty congrega��o.vocal }">
							<td scope="row">${congrega��o.vocal}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Vocal n�o informado</td>
						</c:otherwise>
					</c:choose>



					<c:choose>
						<c:when test="${not empty congregacao.capanha }">
							<td scope="row">${congregacao.campanha}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Campanha n�o informada</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${not empty congregacao.informacoes}">
							<td scope="row">${congregacao.informacoes}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Informa��es nao informadas</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${not empty congregacao.contato}">
							<td scope="row">${congregacao.contato}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Contato n�o informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${not empty congregacao.diasdeculto}">
							<td scope="row"><fmt:formatDate value="${congregacao.diasdeculto}"
									pattern="dd/MM/yyyy" /></td>
						</c:when>
						<c:otherwise>
							<td scope="row">Dias n�o informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${not empty congregacao.responsavel}">
							<td scope="row">${congregacao.responsavel}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Respons�vel n�o informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${not empty congregacao.imagem}">
							<td scope="row">${congregacao.imagem}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Imagem n�o carregada</td>
						</c:otherwise>
					</c:choose>

					<td style="vertical-align: middle; text-align: center;"><a
						href="edit?id=${congregacao.id}">Alterar</a> &nbsp; &nbsp;</td>

					<td style="vertical-align: middle; text-align: center;"><a
						href="delete?id=${congregacao.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>