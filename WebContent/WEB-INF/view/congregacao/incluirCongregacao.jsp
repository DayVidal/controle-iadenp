<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema de Controle IADENP</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 5%; margin-right: 5%;">
	<br />
	<c:import url="/WEB-INF/view/comum/menu.jsp" />


	<hr>
	<h3>Incluir Congregação</h3>
	<hr>

	<div style="text-align: center; color: red;">${mensagem}</div>

	<form action="save" method="post" enctype="multipart/form-data">

		<div class="form-group">
			<label for="inputId">ID</label> <input type="text" id="inputId"
				class="form-control" name="id" style="width: 100px;" maxlength="5"
				required="required" />
		</div>
		<div class="form-group">
			<label for="inputLocalidade">Localidade</label> <input type="text"
				id="inputLocalidade" class="form-control" name="localidade"
				style="width: 200px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Área</label> <input type="text" id="inputArea"
				class="form-control" name="area" style="width: 200px;" maxlength="100"
				required="required" />
		</div>


		<div class="form-group">
			<label for="inputArea">Endereço:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Comissão:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputArea">Mocidade:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Crianças:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>



		<div class="form-group">
			<label for="inputArea">Vocal:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>


		<div class="form-group">
			<label for="inputArea">Campanha:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Informações:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 100px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Contato</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>


		<div class="form-group">
			<label for="inputArea">Dias de culto :</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 100px;" maxlength="7" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Eventos:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>

		<div class="form-group">
			<label for="inputArea">Responsavel Local:</label> <input type="text"
				id="inputArea" class="form-control" name="area"
				style="width: 200px;" maxlength="100" required="required" />
		</div>


		<div class="form-group">
			<label for="inputImagem">Foto da Congregação:</label> <input
				type="file" id="idImagem" class="form-control" name="file"
				style="width: 380px;" maxlength="100" />
		</div>


		<a href="listarCongregacao" class="btn btn-danger" role="button">Cancelar</a>
		&nbsp;
		<button type="reset" class="btn btn-default">&nbsp; Limpar
			&nbsp;</button>
		&nbsp;
		<button type="submit" class="btn btn-primary">&nbsp; Inserir
			&nbsp; </button>
</body>
</html>