package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.CategoryVO;
import dao.CategoryDAO;
import dao.CountryDAO;

/**
 * Servlet implementation class MenuController
 */
@WebServlet("/MenuController")
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuController() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		System.out.println(flag);
		if(flag!=null && flag.equalsIgnoreCase("load"))
		{
			CountryDAO d=new CountryDAO();
			List ls=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("lscountry", ls);
			response.sendRedirect("user/normal_user_withoutSibling.jsp");
		}
		if(flag!=null && flag.equalsIgnoreCase("load1"))
		{
			CountryDAO d=new CountryDAO();
			List ls=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("lscountry", ls);
			response.sendRedirect("user/cordBloodStorageRegistration.jsp");
		}
		if(flag!=null && flag.equalsIgnoreCase("load2"))
		{
			CountryDAO d=new CountryDAO();
			List ls=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("lscountry", ls);
			response.sendRedirect("user/normal_user_withSibling.jsp");
		}
		if(flag!=null && flag.equalsIgnoreCase("load3"))
		{
			CountryDAO d=new CountryDAO();
			List ls=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("lscountry", ls);
			response.sendRedirect("user/donation_form.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
