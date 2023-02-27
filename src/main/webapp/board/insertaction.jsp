<%@page import="board.model.BoardDto"%>
<%@page import="board.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
    <%
    request.setCharacterEncoding("utf-8");
    
    String writer=request.getParameter("writer");
    String content=request.getParameter("content");
    String avata=request.getParameter("avata");
    
    
    BoardDao dao=new BoardDao();
    BoardDto dto=new BoardDto();
    
    dto.setWriter(writer);
    dto.setContent(content);
    dto.setAvata(avata);
    
    dao.insertBoard(dto);
    
    %>