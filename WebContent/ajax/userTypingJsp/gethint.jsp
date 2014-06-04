<%@page import="java.io.Writer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%

	String queryLowCase = new String();
	String subString = new String();

	String[] array = new String[6];
	array[0] = "bart";
	array[1] = "john";
	array[2] = "seth";
	array[3] = "bart";
	array[4] = "john";
	array[5] = "seth";

	//get the q parameter from URL
	String query = new String("aa");
	query = request.getParameter("q");

	//lookup all hints from array if length of q>0
	if (query.length() > 0) 
	{
		String hint = new String("");

		query.length();

		for (int i = 0; i < array.length; i++) 
		{
			
			queryLowCase = query.toLowerCase();
			subString = array[i].toLowerCase().substring(0, query.length());

			
			//queryLowCase == subString
			if (queryLowCase.equals(subString)) 
			{
				if (hint == "") 
				{
					hint = array[i];
				} 
				else 
				{
					hint = hint + " , " + array[i];
				}

			}
		}
		
		Writer writer = response.getWriter();
		
		if (hint == "") 
		{
			writer.write("no suggestion");
			
		}
		else
		{
			writer.write(hint);
		}
	}

	System.out.println(query);
%>
