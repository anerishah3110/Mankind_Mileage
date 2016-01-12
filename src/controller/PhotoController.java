package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ImageVO;
import vo.UserMasterVO;
import vo.VideoVO;
import dao.ImageDAO;
import dao.VideoDAO;

/**
 * Servlet implementation class PhotoController
 */
@WebServlet("/PhotoController")
public class PhotoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoController() {
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
		if(flag!=null && flag.equals("insert"))
		{
			insert(request, response);
			response.sendRedirect("user/Profilenew.jsp");
		}
		else if(flag!=null && flag.equals("load"))
		{
			HttpSession session =request.getSession();
			long name = (long) session.getAttribute("userID");
			ImageDAO i=new ImageDAO();
			List l=i.search(name);
			session.setAttribute("imagelist", l);
						response.sendRedirect("user/Profilenew.jsp");
		}
	}
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		long name = (long) session.getAttribute("userID");
		System.out.println("phcontroller insert"+name);
		 ImageDAO i1=new ImageDAO();
		List l2=i1.search(name);
		
		ImageVO iVO = new ImageVO();
				
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 //attachMPGVO.setAttachmentName("Photo"+i);
        	 iVO.setPath((String)itr.next());
        	         	        	 
        	 i++;
			}
	
         
         	 UserMasterVO u=new UserMasterVO();
         	 u.setUser_id(name);
         	 iVO.setUser_id(u);
         
         	if(l2.isEmpty())
    		{
         		  i1.insert(iVO);	
    		}
         	else
         	{
         		ImageVO o=(ImageVO) l2.get(0);
         		long id=o.getId();
         		iVO.setId(id);
         		i1.update(iVO);
         	}
    		 
        	 
        
        
		
      
		
		session.removeAttribute("fileList");
				
		List l1=i1.search(name);
		session.setAttribute("imagelist", l1);
		
		//show(request, response);
		
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print("piccontroller"+flag);
		if(flag!=null && flag.equals("insert"))
		{
			insert(request, response);
			response.sendRedirect("user/Profilenew.jsp");
		}
	}

}
