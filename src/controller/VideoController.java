package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CountryDAO;
import dao.StateDAO;
import dao.VideoDAO;



import vo.CountryVO;
import vo.StateVO;
import vo.VideoVO;



/**
 * Servlet implementation class AttachmentController
 */
@WebServlet("/VideoController")
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String mode = request.getParameter("mode");
		
		
		if(mode!=null && mode.equals("search")){
			search(request, response);
				
				}else if(mode!=null && mode.equals("edit")){
					    edit(request, response);	
					   
				}else if(mode!=null && mode.equals("delete")){
								delete(request, response);	
							     
							}else{
									//default 
									response.sendRedirect(request.getContextPath()+"/index.jsp");
									}
	}
protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int attachmentID = Integer.parseInt(request.getParameter("video_ID"));
		VideoVO attachVO = new VideoVO();
		attachVO.setVideo_id(attachmentID);
		
		VideoDAO attachDAO = new VideoDAO();
		List l=attachDAO.edit(attachVO);
		HttpSession session =request.getSession();
		session.setAttribute("videolist", l);
		System.out.println("controller edit");
		response.sendRedirect("Admin/edit_video.jsp");
		
		//show(request, response);
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String v_ID = request.getParameter("video_ID");

		System.out.println("delete is called");

		VideoVO x = new VideoVO();
		x.setVideo_id(Long.valueOf(v_ID));

		VideoDAO y = new VideoDAO();
		y.delete(x);
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("myList",ls1);

		response.sendRedirect("Admin/video_search.jsp");
		System.out.println("finish");
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String mode = request.getParameter("mode");
		
		
		/*if(mode!=null && mode.equals("6")){
			deleteSelected(request, response);
			
			}*/ if(mode!=null && mode.equals("insert")){
					insert(request, response);
					response.sendRedirect("Admin/video.jsp");
					
					}
			else if(mode!=null && mode.equals("update")){
				update(request, response);
				
				}
		
		
		
		
	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cat_ID = request.getParameter("v_id");
		String video_name = request.getParameter("V_name");
		String video_desc = request.getParameter("V_desc");
		String video_path = request.getParameter("v_path");
		System.out.println(video_path);
		//String country_description = request.getParameter("country_description");
		System.out.println("update method is called");


		VideoVO x = new VideoVO();
		x.setVideo_id(Long.valueOf(cat_ID));
		x.setVideo_name(video_name);
		x.setVideo_desc(video_desc);

		VideoDAO y = new VideoDAO();
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		if(myList == null)
		{
			System.out.println("asdfghjkl");
			
			
			x.setVideo_path(video_path);
		}
		else
		{
			
			
			 Iterator itr =  myList.iterator();
	         
	         System.out.println("Reading for session");
	         int i =0;
	         while (itr.hasNext()) {
	     
	        	 //attachMPGVO.setAttachmentName("Photo"+i);
	        	 x.setVideo_path((String)itr.next());
	        	 
	        	 
	        	 
	        	 i++;
				}
			
	      
			
			session.removeAttribute("fileList");
		
		}
		
		
		y.update(x);

		List ls1 = new ArrayList();

		ls1 = y.search();

		
		session.setAttribute("myList", ls1);
		
		response.sendRedirect("Admin/video_search.jsp");
	}


	
/*protected void deleteSelected(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String[] attachmentMappingID = request.getParameterValues("list") ;
	
	AttachmentMappingVO attachMPG_VO = new AttachmentMappingVO();
	AttachmentMappingDAO attachMPG_DAO = new AttachmentMappingDAO();
	
	
	for (int i = 0; i < attachmentMappingID.length; i++) {
		
		attachMPG_VO.setAttachmentMappingID(Integer.parseInt(attachmentMappingID[i]));
		
		attachMPG_DAO.delete(attachMPG_VO);
		
	}
	
	
	show(request, response);
	
	
		
	}*/
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String vname = request.getParameter("V_name");
		String vdesc = request.getParameter("V_desc");
		
		System.out.println("fffffffffffff"+vname);
		System.out.println("fffffffffffff"+vdesc);
		
		VideoVO attachmentVO = new VideoVO();
		attachmentVO.setVideo_name(vname);
		attachmentVO.setVideo_desc(vdesc);
		
		VideoDAO attachmentDAO = new VideoDAO();
		
		//attachmentDAO.insert(attachmentVO);
		
		//getting file from Session
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 //attachMPGVO.setAttachmentName("Photo"+i);
        	 attachmentVO.setVideo_path((String)itr.next());
        	 
        	 
        	 
        	 i++;
			}
		
         attachmentDAO.insert(attachmentVO);
		
		session.removeAttribute("fileList");
				
		
		
		
		//show(request, response);
		
		
	}
	
	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VideoDAO vdao=new VideoDAO();
		List myList = vdao.search();
		
		HttpSession session = request.getSession();
		session.setAttribute("myList", myList);
		
		response.sendRedirect(request.getContextPath()+"/Admin/video_search.jsp");
		
		
		
	}

}
