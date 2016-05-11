package myApp.client;



import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myApp.Mydata;
import myApp.Cdata;
/**
 * Servlet implementation class Myserv
 */
@WebServlet("/Myserv")
public class MyServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServ() {
    	
       super();
       System.out.println("I came here");
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		act=request.getParameter("act");
		
		if(act==null)
		{
			String url="/Mycoins.jsp";
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
			dispatch.forward(request, response);
		}
		else if(act.equalsIgnoreCase("hello"))
		{
			
			String val=request.getParameter("myname");
			
			String url="/Mycoins.jsp";
			
			Mydata md=new Mydata();
			md.setMyname(val);
			
			md.getMyname();
			
			request.setAttribute("Name",md.Name);
			request.setAttribute("Country",md.Counrty);
			request.setAttribute("Value",md.Value);
			request.setAttribute("Year",md.Year);
			request.setAttribute("greet",md.myname);
			
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
					dispatch.forward(request, response);
		}
		
	}
	String act=null;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Reached post");
		
		act=request.getParameter("act");
		
		if(act==null)
		{
			String url="/Mycoins.jsp";
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
			dispatch.forward(request, response);
		}
		else if(act.equalsIgnoreCase("hello"))
		{
			
			String val=request.getParameter("myname");
			
			String url="/Mycoins.jsp";
			
			Mydata md=new Mydata();
			md.setMyname(val);
			
			md.getMyname();
			
			request.setAttribute("Name",md.Name);
			request.setAttribute("Country",md.Counrty);
			request.setAttribute("Value",md.Value);
			request.setAttribute("Year",md.Year);
			request.setAttribute("greet",md.myname);
			
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
					dispatch.forward(request, response);
		}
		else if(act.equalsIgnoreCase("add"))
		{
			
			String Name=request.getParameter("nam");
			String Country=request.getParameter("con");
			int Year=Integer.parseInt(request.getParameter("yr"));
			int  Value=Integer.parseInt(request.getParameter("val"));
			
			String url="/Addcoin.jsp";
			
			Mydata md=new Mydata();
			
			md.Name1=Name;
			md.Counrty1=Country;
			md.Year1=Year;
			md.Value1=Value;
			
			
			md.putData();
			
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
					dispatch.forward(request, response);
		}
		else if(act.equalsIgnoreCase("Search"))
		{
			
			String Name=request.getParameter("nam");
			String Country=request.getParameter("con");
			int Year=Integer.parseInt(request.getParameter("yr"));
			//int Value=Integer.parseInt(request.getParameter("val"));
			
			String url="/Search.jsp";
			
			Mydata md=new Mydata();
			
			md.Name1=Name;
			md.Counrty1=Country;
			md.Year1=Year;
		//	md.Value1=Value;
			
			
			md.dataSearch();
			
			request.setAttribute("Name",md.Name);
			request.setAttribute("Country",md.Counrty);
			request.setAttribute("Value",md.Value);
			request.setAttribute("Year",md.Year);
			request.setAttribute("User",md.User);
			
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher(url);
					dispatch.forward(request, response);
		}
		

	}

}
