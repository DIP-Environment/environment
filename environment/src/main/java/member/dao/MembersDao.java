package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import member.model.Members;

public class MembersDao {
	public Members selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			pstmt = conn.prepareStatement(
					"select * from member where memberid = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Members member = null;
			if(rs.next()) {
				member = new Members(
						rs.getString("memberid"),
						rs.getString("name"),
						rs.getString("password"),
						rs.getString("email"),
						toDate(rs.getTimestamp("regdate")),
						toDate(rs.getTimestamp("moddate_pwd")),
						rs.getInt("error_pwd"));
				
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}
	
	public void insert(Connection conn, Members member) throws SQLException {
		try(PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?,?)")) {
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPassword());
			pstmt.setString(4, member.getEmail());
			pstmt.setTimestamp(5, new Timestamp(member.getRegDate().getTime()));
			pstmt.setTimestamp(6, new Timestamp(member.getModDatePwd().getTime()));
			pstmt.setInt(7, member.getErrorPwd());
			pstmt.executeUpdate();
		}
	}
}
