<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Sistema de Controle IADENP</title>

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/estilo.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 5%; margin-right: 5%;">

	<c:import url="../comum/menu.jsp" />

	<hr>
		<h3>Filtro</h3>
	<hr>
		<div>
		<form action="filter">
			<div class="form-group">
				<label for="inputLocalidade">Local</label>
				<input type="text" id="inputLocalidade" class="form-control" name="localidade" style="width: 100px;" maxlength="100" />
			</div>
			<div class="form-group">
				<label for="inputComissao">Comissão</label>
				<input type="text" id="inputComissao" class="form-control" name="comissao" style="width: 500px;" maxlength="100" />
			</div>
			<div class="form-group">
				<button type="reset" class="btn btn-default"> &nbsp; Limpar &nbsp; </button> &nbsp;
				<button type="submit" class="btn btn-primary"> &nbsp; Filtrar &nbsp; </button>
			</div>
		</form>
	</div>
	
	<hr>
		<h3>Congregações</h3>
	<hr>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Localidade</th>
				<th scope="col">Área</th>
				<th scope="col">Endereço</th>
				<th scope="col">Comissão</th>
				<th scope="col">Mocidade</th>
				<th scope="col">Crianças</th>
				<th scope="col">Vocal</th>
				<th scope="col">Campanha</th>
				<th scope="col">Informações</th>
				<th scope="col">Contato</th>
				<th scope="col">Dias de culto</th>
			    <th scope="col">Eventos</th>
			    <th scope="col">Responsável Local</th>
			    <th scope="col">Foto da Congregação</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="congregacao" items="${listaCongregacao}">
				<tr>
					<th>#</th>
					<c:choose>
						<c:when test="${congregacao.localidade ne null }">
							<td scope="row">${congregacao.localidade}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Local não informado</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${congregacao.area ne null }">
							<td scope="row">${congregacao.area}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Área não informada</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${congregacao.endereco ne null }">
							<td scope="row">${congregacao.endereco}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Endereço não informada</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${congregacao.comissao ne null }">
							<td scope="row">${congregacao.comissao}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Comissão não informado</td>
						</c:otherwise>
					</c:choose>
					
						<c:choose>
						<c:when test="${congregacao.mocidade ne null }">
							<td scope="row">${congregacao.mocidade}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Mocidade não informada</td>
						</c:otherwise>
					</c:choose>
					
						<c:choose>
						<c:when test="${congregacao.criancas ne null }">
							<td scope="row">${congregacao.criancas}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Crianças não informada</td>
						</c:otherwise>
					</c:choose>
					
					
						<c:choose>
						<c:when test="${congregacao.vocal ne null }">
							<td scope="row">${congregacao.vocal}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Vocal não informado</td>
						</c:otherwise>
					</c:choose>
					
					
						<c:choose>
						<c:when test="${congregacao.campanha  ne null}">
							<td scope="row">${congregacao.campanha}</td>
						</c:when>
						<c:otherwise>
							<td scope="row"> Campanha não informado</td>
						</c:otherwise>
					</c:choose>


					<c:choose>
						<c:when test="${congregacao.informacoes ne null }">
							<td scope="row">${congregacao.informacoes}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Informações não informada</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${congregacao.contato ne null }">
							<td scope="row">${congregacao.contato}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Contato nao informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${congregacao.diasdeculto ne null }">
							<td scope="row">${congregacao.diasdeculto}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Dias não informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${congregacao.eventos ne null }">
							<td scope="row">${congregacao.eventos}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Eventos não informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${congregacao.responsavelLocal ne null }">
							<td scope="row">${congregacao.responsavelLocal}</td>
						</c:when>
						<c:otherwise>
							<td scope="row">Responsável não informado</td>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${congregacao.imagem ne null }">
							<td scope="row"><img src="../resources/img/${congregacao.imagem}" style=" width:20%;" /></td>
						</c:when>
						<c:otherwise>
							<td scope="row">Imagem não carregada</td>
						</c:otherwise>
					</c:choose>

					<td style="vertical-align: middle; text-align: center;"><a
						href="edit?id=${congregacao.id}">Alterar </a></td>

					<td style="vertical-align: middle; text-align: center;"><a
						href="delete?id=${congregacao.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	

	<c:import url="../comum/textoRodape.jsp" />

</body>
</html>