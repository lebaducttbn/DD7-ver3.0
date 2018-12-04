package com.minhanh.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minhanh.Connect.DBConnect;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class contract_DAO {
	
	public ArrayList<contract> getListcontract () throws SQLException{
		Connection conn = DBConnect.getConnection();
		String sql="SELECT * FROM contract ";
		PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<contract> List = new ArrayList<>();
		while(rs.next()) {
			contract contract = new contract();
			contract.setContract_id(rs.getInt("contract_id"));
			contract.setContract_name(rs.getString("contract_name"));
			contract.setContract_customer_id(rs.getInt("contract_customer_id"));
			contract.setContract_tour_id(rs.getInt("contract_tour_id"));
			contract.setContract_start_date(rs.getString("contract_start_date"));
			contract.setContract_finish_date(rs.getString("contract_finish_date"));
			contract.setContract_founded_date(rs.getString("contract_founded_date"));
			contract.setContract_costs_date(rs.getString("contract_costs_date"));
			contract.setContract_payment(rs.getString("contract_payment"));
		
			}
		return List;
		}
	
	public static void main(String[] args) throws SQLException {
		contract_DAO ct = new contract_DAO();
		for(contract p : ct.getListcontract()) {
			System.out.println(p.getContract_customer_id()+"   "+p.getContract_founded_date());
		}
	}
}
