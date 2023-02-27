<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.model.BoardDto"%>
<%@page import="board.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%
    
    request.setCharacterEncoding("utf-8");
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
    
    BoardDao dao=new BoardDao();
    ArrayList<BoardDto> list=dao.getAllData();
    
    JSONArray arr=new JSONArray();
    
    for(BoardDto dto:list){
    	
	    JSONObject ob=new JSONObject();
	    ob.put("num",dto.getNum());
	    ob.put("writer",dto.getWriter());
	    ob.put("content",dto.getContent());
	    ob.put("avata",dto.getAvata());
	    ob.put("writeday",sdf.format(dto.getWriteday()));
    
	    arr.add(ob);
    }
    
    %>
    <%=arr.toString()%>