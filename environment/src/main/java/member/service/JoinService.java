package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MembersDao;
import member.model.Members;

public class JoinService {
	private MembersDao memberDao = new MembersDao();
	
	public void join(JoinRequest joinReq) throws SQLException {
		Connection conn =  null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Members member = memberDao.selectById(conn, joinReq.getId());
			if(member != null) {
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			
			memberDao.insert(conn, 
					new Members(
							joinReq.getId(),
							joinReq.getName(),
							joinReq.getPassword(), 
							joinReq.getEmail(), 
							new Date(),
							new Date(),
							0)
					);
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}