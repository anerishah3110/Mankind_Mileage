package controller;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.CategoryDAO;
import dao.ComplaintDAO;
import dao.CountDAO;
import dao.ImageDAO;
import dao.PackagePurchaseDAO;
import dao.SubcatDAO;
import dao.UserMasterDAO;
import vo.CategoryVO;
import vo.PackagePurchaseVO;
import vo.SubcatVO;
import vo.UserMasterVO;
 

/**
 * Servlet Filter implementation class loginController
 */
@WebFilter("/*")
public class LoginFilter  extends Review implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    	
    	Review r=new Review();
        Thread t=new Thread(r);
        t.start();
    }
    /**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");
		
		//	int i = (Integer)session.getAttribute("userID");
		//System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		
		System.out.println("link =  = = = = " + uri);
		
		if(uri.contains("register")||uri.contains("Home.jsp")||uri.contains("collection.jsp")||uri.contains("banking.jsp")||uri.contains("loadState.jsp")||uri.contains("loadCity.jsp")||uri.contains("forgot_password.jsp")||uri.contains("cordBloodStorageRegistration.jsp")||uri.contains("donation_form.jsp")||uri.contains("normal_user_withoutSibling.jsp")||uri.contains("user_package.jsp")||uri.contains("RegisterNow.jsp")||uri.contains("login.jsp")||uri.contains("/css") || uri.contains("/js") || uri.contains("/img")|| uri.contains("/fonts")||uri.contains("Controller"))
		{
			System.out.println("inside reg");
			
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
			
			chain.doFilter(request,response);
			
		}
		
		else if (flag!= null && flag.equals("logout")) {
			//session.removeAttribute("userID");
			System.out.println("logout in else if");
		
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/user/Home.jsp");
			rd.forward(request, response);
			
		}
		else if(request.getParameter("flag") != null && request.getParameter("flag").equals("login") )
		{
			String userName = request.getParameter("login");
			String password = request.getParameter("password");
			System.out.println(userName+""+password);
			
			UserMasterVO u = new UserMasterVO();
			u.setUser_id(Long.valueOf(userName));
			u.setUser_password(password);
			
			UserMasterDAO d=new UserMasterDAO();
			List list =  d.search_p(u);
			System.out.println("listtttttttttt"+list.size());
		
			if(list != null && list.size()>=1){
				
				Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
				UserMasterVO user=(UserMasterVO) itr.next();
				
				long y2 = (long)user.getUser_id();
				session.setAttribute("userID",y2);
				String y3=user.getUser_name();
				session.setAttribute("userName",y3);
				
				System.out.println(user.getType());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getType();
				session.setAttribute("usertype",type);
				String usertype = user.getUser_type();
				session.setAttribute("type",usertype);
				
				System.out.println(y2);
				if(type.equals("user"))
				{
				/*	CategoryDAO y1 = new CategoryDAO();
					CategoryVO x1 = new CategoryVO();

					List ls2 = new ArrayList();
					ls2 = y1.search(x1);
					//System.out.println(ls1.toString());

					HttpSession session1 = ((HttpServletRequest)request).getSession();
					session1.setAttribute("lssearch2", ls2);

					SubcatDAO y = new SubcatDAO();
					SubcatVO x = new SubcatVO();

					List ls1 = new ArrayList();
					ls1 = y.search(x);
					//System.out.println(ls1.toString());
					session1.setAttribute("lssearch", ls1);

					Iterator iterator = ls2.iterator();

					Map mp = new HashMap();
					while (iterator.hasNext()) {
						CategoryVO categoryVO = (CategoryVO) iterator.next();
						long catId = categoryVO.getCategory_id();

						Iterator iterator2 = ls1.iterator();
						List lsans = new ArrayList();
						while (iterator2.hasNext()) {
							SubcatVO subCategoryVO = (SubcatVO) iterator2.next();
							long scatId = subCategoryVO.getCategory_id()
									.getCategory_id();

							if (catId == scatId) {

								lsans.add(subCategoryVO);

							}
						}

						mp.put(categoryVO.getCategory_name(), lsans);

					}/
					Iterator iterator2 = ls1.iterator();
					while (iterator2.hasNext()) {
						System.out.print(iterator2.next());
					}

					session.setAttribute("menu", mp);
					
*/				requestDispatcher = request.getRequestDispatcher("/user/Home.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("lab"))
				{
					requestDispatcher = request.getRequestDispatcher("/laboratory/index.jsp");  
					requestDispatcher.forward(request,response);  
				
				}
				else
				{
				  ComplaintDAO c=new ComplaintDAO();
				  List l=c.search();
				  session.setAttribute("loadlist",l);
					CountDAO cd=new CountDAO();
					List ls5=cd.search();
				  ImageDAO d3=new ImageDAO();
		          List ls=d3.search(y2);
		          session.setAttribute("imglist", ls);
		          session.setAttribute("countlist", ls5);
		          System.out.println("size.."+ls5.size());
		          PackagePurchaseDAO d8=new PackagePurchaseDAO();
		            List ls1=d8.search();
		            System.out.println("sizeeeee"+ls1.size());
		            int price=0;
		            for(int i=0;i<ls1.size();i++){
		            	PackagePurchaseVO v=(PackagePurchaseVO) ls1.get(i);
		            		 price=price+v.getPackage_id().getPackage_price();
		            		
		            }
		            System.out.println(price);
		            session.setAttribute("price", price);
		            System.out.println("sizeeeee"+ls1.size());
		            session.setAttribute("packlist", ls1);
				requestDispatcher = request.getRequestDispatcher("/Admin/index.jsp");  
				requestDispatcher.forward(request,response);  
				}
				}
			
			else{
					requestDispatcher = request.getRequestDispatcher("/login.jsp");  
					requestDispatcher.forward(request,response);  		
				}	
		}
		
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			chain.doFilter(request,response);
			
		/*	if(h!=null && h.equals("admin") && uri.contains("/admin")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("user") && uri.contains("/user"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/user/error.jsp");  
				rd.forward(request,response);  
	
				
			}
	*/	}
		else{
			
		
			
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");  
			rd.forward(request,response);  
			
			}
		
		
		
		
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
