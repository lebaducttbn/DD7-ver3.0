package com.minhanh.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minhanh.Connect.DBConnect;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class tour_DAO {
	//get danh sach tour
	public ArrayList<tour> getListTour () throws SQLException{
		Connection conn = DBConnect.getConnection();
		String sql="SELECT * FROM tour ";
		PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<tour> List = new ArrayList<>();
		while(rs.next()) 
		{
			tour tour = new tour();
			tour.setTour_id(rs.getInt("tour_id"));
			tour.setTour_code(rs.getString("tour_code"));
			tour.setTour_name(rs.getString("tour_name"));
			tour.setTour_destination_id(rs.getString("tour_destination_id"));
			tour.setTour_sub_destination_id(rs.getString("tour_sub_destination_id"));
			tour.setTour_start_id(rs.getString("tour_start_id"));
			tour.setTour_start_date(rs.getString("tour_start_date"));
			tour.setTour_finish_date(rs.getString("tour_finish_date"));
			tour.setTour_number_date(rs.getString("tour_number_date"));
			tour.setTour_number_customer(rs.getString("tour_number_customer"));
			tour.setTour_customer_notes(rs.getString("tour_customer_notes"));
			tour.setTour_transport(rs.getString("tour_transport"));
			tour.setTour_guider_id(rs.getInt("tour_guider_id"));
			tour.setTour_price(rs.getString("tour_price"));
			List.add(tour);
					
			}
		return List;
		}
	
	//them moi du lieu
	public boolean inserttour(tour t) {
		Connection conn = DBConnect.getConnection();
		String sql="INSERT INTO tour_service.tour\r\n" + 
				"(\r\n" + 
				"tour_code,\r\n" + 
				"tour_name,\r\n" + 
				"tour_destination_id,\r\n" + 
				"tour_sub_destination_id,\r\n" + 
				"tour_start_id,\r\n" + 
				"tour_start_date,\r\n" + 
				"tour_finish_date,\r\n" + 
				"tour_number_date,\r\n" + 
				"tour_number_customer,\r\n" + 
				"tour_customer_notes,\r\n" + 
				"tour_transport,\r\n" + 
				"tour_guider_id,\r\n" + 
				"tour_price)VALUES(?,\r\n" + 
				"?,?,?,\r\n" + 
				"?,?,?,?,\r\n" + 
				"?,?,\r\n" + 
				"?,?,?);\r\n" + 
				" ";
		try
		{
			PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
			
			ps.setString(1, t.getTour_code());
			ps.setString(2, t.getTour_name());
			ps.setString(3, t.getTour_destination_id());
			ps.setString(4, t.getTour_sub_destination_id());
			ps.setString(5, t.getTour_start_id());
			ps.setString(6, t.getTour_start_date());
			ps.setString(7, t.getTour_finish_date());
			ps.setString(8, t.getTour_number_date());
			ps.setString(9, t.getTour_number_customer());
			ps.setString(10, t.getTour_customer_notes());
			ps.setString(11, t.getTour_transport());	
			ps.setInt(12,t.getTour_guider_id());
			ps.setString(13, t.getTour_price());
			return ps.executeUpdate()==1;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
	//cap nhat du lieu
	public boolean update(tour t) throws SQLException {
	    try {
	         Connection conn = DBConnect.getConnection();
	         String sql = "UPDATE tour_service.tour SET tour_code=? ,tour_name = ?,tour_destination_id = ?,tour_sub_destination_id = ?,"
	         		+ "tour_start_id = ?,tour_start_date = ?,tour_finish_date = ?,tour_number_date = ?,"
	         		+ "tour_number_customer = ?,tour_customer_notes = ?,tour_transport = ?,tour_guider_id = ?,"
	         		+ "tour_price = ?  WHERE tour_id = ?";
	         PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
	     	
			ps.setString(1, t.getTour_code());
			ps.setString(2, t.getTour_name());
			ps.setString(3, t.getTour_destination_id());
			ps.setString(4, t.getTour_sub_destination_id());
			ps.setString(5, t.getTour_start_id());
			ps.setString(6, t.getTour_start_date());
			ps.setString(7, t.getTour_finish_date());
			ps.setString(8, t.getTour_number_date());
			ps.setString(9, t.getTour_number_customer());
			ps.setString(10, t.getTour_customer_notes());
			ps.setString(11, t.getTour_transport());	
			ps.setInt(12,t.getTour_guider_id());
			ps.setString(13, t.getTour_price()); 
			ps.setInt(14, t.getTour_id());
			return ps.executeUpdate()==1;
	    } catch (Exception e) {
	         return false;
	    }
	}	
	
	//xoa du lieu
	public boolean delete(String tour_code) throws SQLException {
	    try {
	        Connection conn = DBConnect.getConnection();
	        String sql = "DELETE FROM tour_service.tour WHERE tour_code = ?";
	        PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
	        ps.setString(1, tour_code);;
	        return ps.executeUpdate()==1;
	    } catch (Exception e) {
	        return false;
	    }
	}
	
	
	
		
	}
	



