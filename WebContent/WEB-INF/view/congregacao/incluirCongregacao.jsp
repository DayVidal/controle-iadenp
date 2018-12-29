<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Sistema de Controle IADENP</title>

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 5%; margin-right: 5%;">

	<c:import url="../comum/menu.jsp" />

	<hr>
		<h3>Incluir Congregação</h3>
	<hr>

	<div style="text-align: center; color: red;">${mensagem}</div>

	<form action="save" method="post" enctype="multipart/form-data">

		<div class="form-group">
			<label for="inputLocalidade">Localidade:</label>
			<input type="text" id="inputLocalidade" class="form-control" name="localidade" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputArea">Área:</label>
			<input type="text" id="inputArea" class="form-control" name="area" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputEndereco">Endereço:</label>
			<input type="text" id="inputEndereco" class="form-control" name="endereco" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputComissao">Comissão:</label>
			<input type="text" id="inputComissao" class="form-control" name="comissao" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputMocidade">Mocidade:</label>
			<input type="text" id="inputMocidade" class="form-control" name="mocidade" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputCriancas">Crianças:</label>
			<input type="text" id="inputCriancas" class="form-control" name="criancas" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputVocal">Vocal:</label>
			<input type="text" id="inputVocal" class="form-control" name="vocal" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputCampanha">Campanha:</label>
			<input type="text" id="inputCampanha" class="form-control" name="campanha" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputInformacoes">Informações:</label>
			<input type="text" id="inputInformacoes" class="form-control" name="informacoes" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputContato">Contato:</label>
			<input type="text" id="inputContato" class="form-control" name="contato" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputDiasDeCulto">Dias de culto:</label>
			<input type="text" id="inputDiasDeCulto" class="form-control" name="diasdeculto" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputEventos">Eventos:</label>
			<input type="text" id="inputEventos" class="form-control" name="eventos" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputResponsavelLocal">Responsável Local:</label>
			<input type="text" id="inputResponsavelLocal" class="form-control" name="responsavelLocal" style="width: 100px;" maxlength="100" required="required" />
		</div>
		<div class="form-group">
			<label for="inputImagem">Imagem</label> 
			<input type="file" id="inputImagem" class="form-control" name="file" style="width: 500px;" maxlength="100" required="required" />
		</div>

		<a href="add" class="btn btn-danger" role="button">Cancelar</a>&nbsp;
		<button type="reset" class="btn btn-default">&nbsp; Limpar&nbsp;</button>&nbsp;
		<button type="submit" class="btn btn-primary">&nbsp; Inserir&nbsp; </button>
		
	</form>
	
</body>
</html>