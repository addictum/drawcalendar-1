package com.project.draw.draw_plan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.draw.brand.BrandVO;

public class Draw_planDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public List<Draw_planVO> select_draw_plan() {
		List<Draw_planVO> list = new ArrayList<Draw_planVO>();
		Draw_planVO vo = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@drawcalendar.cyeadvl5x6ht.ap-northeast-2.rds.amazonaws.com:1521:ORCL", "jung", "jung12!#");
			ps = con.prepareStatement("select * from draw_plan");
			rs = ps.executeQuery();
			while(rs.next()) {
				vo = new Draw_planVO();
				vo.setDraw_date(rs.getString("draw_date"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if( con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list;
	}
}
