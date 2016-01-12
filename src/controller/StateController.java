package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CountryDAO;
import dao.StateDAO;

import vo.CountryVO;
import vo.StateVO;

/**
 * Servlet implementation class CountryController
 */
@WebServlet("/StateController")
public class StateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print(flag);
		if(flag.equalsIgnoreCase("insert")){
			insert(request,response);
			response.sendRedirect("Admin/State.jsp");
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		else if(flag!=null && flag.equals("edit"))
		{
			edit(request, response);
		}
		else if (flag != null && flag.equals("update")) {
			update(request, response);
		}
		else if (flag != null && flag.equals("delete")) {
			delete(request, response);
		}
		else{
			load(request,response);
		}
	}
		//System.out.println("state");
		public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			try{
				CountryDAO d= new CountryDAO();
				List l=d.load();
				HttpSession session=request.getSession();
				session.setAttribute("clist", l);
				System.out.println("hhhhhhhhh");
				response.sendRedirect("Admin/State.jsp");
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		public void search(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
		{

			
			StateDAO y = new StateDAO();
			StateVO x = new StateVO();
			
			List ls1=new ArrayList();
			ls1=y.search(x);
			
			HttpSession session=request.getSession();
			session.setAttribute("lssearch",ls1);

			response.sendRedirect("Admin/state_search.jsp");
			
			System.out.println("search complete");

		}	

		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print(flag);
		if(flag.equalsIgnoreCase("insert")){
			insert(request,response);
			response.sendRedirect("Admin/State.jsp");
		}
		else if (flag != null && flag.equals("update")) {
			update(request, response);
		}
		else{
			load(request,response);
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String state=request.getParameter("State");
		String country=request.getParameter("s_example");
		CountryVO f= new CountryVO();
		f.setCountry_id(Long.valueOf(country));
		System.out.println(f.getCountry_id());
		StateVO e = new StateVO();
		e.setState_name(state);
		e.setCountry_id(f);
		
		StateDAO d = new StateDAO();
		d.insert(e);
		}
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CountryDAO cc = new CountryDAO();

		List ls = cc.load();
		System.out.println(ls);


		String state_ID = request.getParameter("State_ID");
	
		System.out.println(state_ID);
StateDAO y = new StateDAO();
StateVO x = new StateVO();
		x.setState_id(Long.valueOf(state_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		response.sendRedirect("Admin/edit_state.jsp");

	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String country = request.getParameter("s_example");

		CountryVO c = new CountryVO();
		c.setCountry_id(Long.valueOf(country));
		
		String state_ID = request.getParameter("state_ID");

		String state_name = request.getParameter("state_name");
		//String state_description = request.getParameter("state_description");
		System.out.println("update method is called");
	

		StateVO x = new StateVO();
		x.setCountry_id(c);
		x.setState_id(Long.valueOf(state_ID));
		x.setState_name(state_name);
		//x.setState_description(state_description);
		StateDAO y = new StateDAO();
		y.update(x);

		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/state_search.jsp");
		System.out.println("finish");
	}


	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession httpSession=request.getSession();
		String state_ID = request.getParameter("State_ID");

		System.out.println("delete is called");

		StateVO x = new StateVO();
		x.setState_id(Long.valueOf(state_ID));

		StateDAO y = new StateDAO();
		if(!y.delete(x)){
			
			httpSession.setAttribute("errorMsg","Please remove child rows first");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
		}
		
		
		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/state_search.jsp");
		System.out.println("finish");
	}

		
	
	/*public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			CountryDAO d= new CountryDAO();
			List l=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("clist", l);
			response.sendRedirect("Admin/State.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	*/}
