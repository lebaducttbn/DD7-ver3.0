package com.minhanh.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minhanh.Connect.DBConnect;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class guider_DAO {
		
	public ArrayList<guider> getListguider () throws SQLException{
		Connection conn = DBConnect.getConnection();
		String sql="SELECT * FROM guider ";
		PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<guider> List = new ArrayList<>();
		while(rs.next()) {
			guider guider = new guider();
			guider.setGuider_id(rs.getInt("guider_id"));
			guider.setGuider_indentity_card(rs.getString("guider_indentity_card"));
			guider.setGuider_fullname(rs.getString("guider_fullname"));
			guider.setGuider_address(rs.getString("guider_address"));
			guider.setGuider_phone(rs.getString("guider_phone"));
			guider.setGuider_birthday(rs.getString("guider_birthday"));
			guider.setGuider_notes(rs.getString("guider_notes"));
			guider.setGuider_email(rs.getString("guider_email"));
			guider.setGuider_office(rs.getString("guider_office"));
			guider.setGuider_sex(rs.getString("guider_sex"));
			guider.setGuider_isative(rs.getString("guider_isative"));
			guider.setGuider_level(rs.getString("guider_isative"));
			}
		return List;
		}
	public static void main(String[] args) throws SQLException {
		guider_DAO g = new guider_DAO();
		for(guider p : g.getListguider()) {
			System.out.println(p.getGuider_address()+"   "+p.getGuider_birthday());
		}
	}
}
