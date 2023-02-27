<%@page import="board.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
    <%
    
    String num=request.getParameter("num");
    
    BoardDao dao=new BoardDao();
    dao.deleteBoard(num);
    
    %>