package controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.DataScrapper;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String,String> data=new HashMap<String,String>();
	DataScrapper sc=new DataScrapper();
	/**
     * Default constructor. 
     */
    public Login() {
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String input=request.getParameter("countryName");
		try 
		{
			data=sc.getData(input);
		
		}catch(Exception e) {e.printStackTrace();}
		
		if(data.isEmpty())
		{

			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("data", data);
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}

}