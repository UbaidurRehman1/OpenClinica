<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setBundle basename="org.akaza.openclinica.i18n.words" var="resword"/>
<link rel="stylesheet" href="includes/font-awesome-4.7.0/css/font-awesome.css">
<jsp:include page="../include/submit-header.jsp"/>

<jsp:useBean scope='session' id='userBean' class='core.org.akaza.openclinica.bean.login.UserAccountBean'/>

<iframe id="insight" style="width:100%; height:800px;"></iframe>
<script>
  var src = window.location.origin.split('.');
  if (src.length < 4)
    src.splice(1, 0, 'insight');
  else
    src[1] = 'insight';
  src = src.join('.');
  src += window.location.search.slice(1);
  $('#insight').attr('src', src);
</script>