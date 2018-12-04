package com.minhanh.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minhanh.Connect.DBConnect;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class customer_DAO {
	public ArrayList<customer> getListcustomer () throws SQLException{
		Connection conn = DBConnect.getConnection();
		String sql="SELECT * FROM customer ";
		PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<customer> List = new ArrayList<>();
		while(rs.next()) {
			customer customer = new customer();
			customer.setCustomer_id(rs.getInt("customer_id"));
			customer.setCustomer_indentity_card(rs.getString("customer_indentity_card"));
			customer.setCustomer_fullname(rs.getString("customer_fullname"));
			customer.setCustomer_address(rs.getString("customer_address"));
			customer.setCustomer_phone(rs.getString("customer_phone"));
			customer.setCustomer_birthday(rs.getString("customer_birthday"));
			customer.setCustomer_notes(rs.getString("customer_notes"));
			customer.setCustomer_email(rs.getString("customer_email"));
			customer.setCustomer_office(rs.getString("customer_office"));
			customer.setCustomer_sex(rs.getString("customer_sex"));
			customer.setCustomer_isative(rs.getString("customer_isative"));
			customer.setCustomer_level(rs.getString("customer_level"));
			customer.setCustomer_company(rs.getString("customer_company"));
			customer.setCustomer_code(rs.getString("customer_code"));
			}
		return List;
		}
	
	public static void main(String[] args) throws SQLException {
		customer_DAO c = new customer_DAO();
		for(customer p : c.getListcustomer()) {
			System.out.println(p.getCustomer_address()+"   "+p.getCustomer_code());
		}
	}
}
