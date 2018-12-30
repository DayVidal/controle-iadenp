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

	<c:import url="comum/menu.jsp" />
	
<!--banner-->
  <section id="banner" class="banner" >
    <div class="bg-color"> 
      <div class="container">
        <div class="row">
          <div class="banner-info" style="margin-right: 200px;">
            <div class="banner-logo text-center">
              <img src="<%=request.getContextPath()%>/resources/img/templocentral.jpg" class="img-responsive">
            </div>
            <div class="banner-text text-center">
              <h1 class="white">Test</h1>
              <p>Test</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <c:import url="comum/textoRodape.jsp" />
  
</body>
</html>