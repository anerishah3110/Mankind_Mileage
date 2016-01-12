<%@page import="java.util.ArrayList"%>
<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@page import="vo.CountVO"%>
<%@page import="dao.CountDAO"%>
<%@page import="vo.StateVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>


<%

List objLs =(List)session.getAttribute("countlist");

List ls = new ArrayList();

//System.out.println(c.getPositive()+" and indexes "+c.getNegative());
Object [] obj = (Object[])objLs.get(0);

Object [] obj1 = new Object[2];
 obj1[0]="Positive";
obj1[1]=obj[0];
System.out.println("kkkkkkkkkkkkkkk"+obj[1].toString());
ls.add(obj1); 
  obj1 = new Object[2];
 obj1[0]="Negative";
obj1[1]=obj[1];
System.out.println("kkkkkkkkkkkkkkk"+obj[1].toString());
ls.add(obj1);
session.setAttribute("lschart",ls); 
String filePath = getServletContext().getRealPath(request.getServletPath());
int path = filePath.lastIndexOf('\\');
String path1= filePath.substring(0, path); //+"\\doc\\";


FileWriter f=new FileWriter(path1+"\\h.json");
BufferedWriter b=new BufferedWriter(f);

b.write("{\"JSChart\" : {\"datasets\" : [{\"type\" : \"pie\",\"data\" : [");



System.out.println("List size is : "+ls.size());

int i=0;
for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
	Object[] type = (Object[]) iterator.next();
	String str ="{\"unit\":\""+type[0]+"\",\"value\":\""+type[1]+"\"}";
	
	b.write(str);
	i++;	
	if(i<ls.size()){
		b.write(",");
	}

	
	
	
}

b.write("] } ] } }");

b.close();

%>