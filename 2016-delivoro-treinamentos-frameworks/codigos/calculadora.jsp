<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<body>
	<form method="GET">
		<fieldset>
			<legend>Formulário de Calculo</legend>
			<p>
				<label for="num1">Num 1</label>
				<input type="text" id="num1" name="n1" value="${param.n1}"/>
			</p>
			<p>
				<label for="num2">Num2</label>
				<input type="text" id="num2" name="n2" value="${param.n2}"/>
			</p>
			<p>
				<label for="adicao">Adicao</label>
				<input type="radio" id="adicao" name="operacao" value="adicao" /><br/>

				<label for="subtracao">Subtracao</label>
				<input type="radio" id="subtracao" name="operacao" value="subtracao" /><br/>

				<label for="multiplicacao">Multiplicação</label>
				<input type="radio" id="multiplicacao" name="operacao" value="multiplicacao" /><br/>

				<label for="divisao">Divisão</label>
				<input type="radio" id="divisao" name="operacao" value="divisao" /><br/>

				<label for="tabuada">Tabuada</label>
				<input type="radio" id="tabuada" name="operacao" value="tabuada" />
			</p>
			<p>
				<input type="submit" value="Salvar">
				<input type="reset" value="Limpar">
			</p>
		</fieldset>
	</form>

	<c:if test="${not empty param.n1 and not empty param.n2 and not empty param.operacao}" >
	    <h3>Resultado</h3>
	    <c:choose>
	        <c:when test="${param.operacao eq 'adicao'}" >
	            <p>Adição: ${param.n1} + ${param.n2} = ${param.n1 + param.n2}</p>
	        </c:when>
	        <c:when test="${param.operacao eq 'tabuada'}" >
	            <p>Tabuada</p>
	            <c:forEach begin="1" end="${param.n2}" varStatus="st">
	                <br/>${st.index} * ${param.n1} =
	                <fmt:formatNumber type="number" minFractionDigits="3" value="${param.n1 * st.index}" />
	            </c:forEach>
            </c:when>
	    </c:choose>
	</c:if>
</body>
</html>
