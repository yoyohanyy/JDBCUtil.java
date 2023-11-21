<%--
  Created by IntelliJ IDEA.
  User: hani
  Date: 11/21/23
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.example.jspcrudproject.dao.BoardDAO, com.example.jspcrudproject.bean.BoardVO,java.util.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO list = boardDAO.getBoard(Integer.parseInt(id));
    request.setAttribute("u",list);
%>
<h1>${u.getTitle()}</h1>
<p>${u.getContent()}</p>
<h5>Category : ${u.getCategory()} / Writer : ${u.getWriter()}</h5>
</body>
</html>
