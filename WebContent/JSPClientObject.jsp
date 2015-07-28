<%@ page language="java" import="java.util.*" %>
<html>
<body>
Session attributes:
<%  
session.setAttribute("test.name", "Test Attribute List"); 
session.setAttribute("test.float", new Float(5.0));  
session.setAttribute("test.int", new Integer(20));  
session.setAttribute("test.Object", new StringBuffer("StringBuffer"));  
session.setAttribute("test.boolean", new Boolean(true));  
session.setAttribute("test.double", new Double(343.1));  
for (Enumeration e = request.getAttributeNames(); e.hasMoreElements(); ) 
{         
	String attribName = (String) e.nextElement();   
	Object attribValue = request.getAttribute(attribName);%>
	<BR><%= attribName %> - <%= attribValue %>
	<%}%>
</body></html>