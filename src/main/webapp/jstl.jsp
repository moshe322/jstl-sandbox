<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head><title>JSTL Sandbox</title></head>
<body>

<h2><c:out value="Party like it's 2001"/></h2>

<%
    String elString = "DOES NOT WORK";
    String unsafeString = "<>\"'";
%>

<pre>
Plain EL: ${1+1}
Plain EL accessing code block string: ${elString} (does not work)
EL: <c:out value="${1+2}"/>
EL accessing code block variable: <c:out value="${elString}"/> (does not work)
EL accessing non existent variable: <c:out value="${t}"/> (does not work)
</pre>

<h2>Escaping unsafe content</h2>

<pre>
c:out: <c:out value="${unsafeString}"/> (does not work)
c:out: <c:out value="<%=unsafeString%>"/> (safe)
c:url: <c:url value="<%=unsafeString%>"><c:param name="p" value="<%=unsafeString%>"/></c:url> (unsafe)
</pre>

</body>
</html>