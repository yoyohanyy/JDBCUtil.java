<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.jspcrudproject.dao.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.jspcrudproject.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>