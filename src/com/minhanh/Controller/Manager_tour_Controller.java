package com.minhanh.Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minhanh.Model.tour;
import com.minhanh.Model.tour_DAO;
import com.mysql.jdbc.StringUtils;
import com.sun.javafx.css.Declaration;


@WebServlet("/Manager_tour_Controller")
public class Manager_tour_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	tour_DAO Tour_DAO = new tour_DAO();
   
    public Manager_tour_Controller() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		String command = request.getParameter("command");
		String ma =request.getParameter("ma");
		String themten = request.getParameter("themten");			
		String gia = request.getParameter("gia");
		String denchinh = request.getParameter("denchinh");
		String denphu = request.getParameter("denphu");
		String diembatdau = request.getParameter("diembatdau");
		String thoigianbatdau = request.getParameter("thoigianbatdau");
		String thoigianketthuc = request.getParameter("thoigianketthuc");
		String tongsongay = request.getParameter("tongsongay");
		String tongsonguoi = request.getParameter("tongsonguoi");
		String phuongtien = request.getParameter("phuongtien");
		int die = Integer.valueOf(request.getParameter("die"));
		String de = request.getParameter("de");
		int tour_id = Integer.valueOf(request.getParameter("tour_id"));
		
		String url ="" , error="";
		
		if(themten.equals("")) {
			error="vui lòng nhập tên tour ";
			request.setAttribute("error", error);
		}
		
		try
		{
				if(error.length()==0) {
					switch (command) {
					case "insert":
						
						if(Tour_DAO.inserttour(new tour(ma, themten,gia,denchinh,denphu,diembatdau,thoigianbatdau,thoigianketthuc,tongsongay,tongsonguoi,phuongtien,die,de))==true);
							url="/admin/indexadmin.jsp";
						break;
					
						
					case"delete":
					//	if(Tour_DAO.delete(new tour(ma))==true);
						
						break;

					}			
				}else {
					url="/admin/add-product.jsp";
				}
		} catch (Exception e) {
			
		}
		RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
