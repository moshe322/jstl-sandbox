<!DOCTYPE html>
<html>
<body>
<h2>Hello World!</h2>

<a href="jstl.jsp">jstl.jsp</a>

<h2>JSP examples</h2>

<%-- This is JSP comment --%>

<h1>Output</h1>

<%
    String s="Works!";
%>

<pre>
out.println: <% out.println(s);%>
JSP expression: <%= 1+1 %>
JSP expression accessing code block variable: <%= s %>
Plain EL: ${1+1}
</pre>

</body>
</html>
