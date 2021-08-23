package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import member.dao.MembersDao;
import member.model.Members;
import member.model.User;

public class LoginService {
	private MembersDao memberDao = new MembersDao();
	
	public User login(String id, String password) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			Members member = memberDao.selectById(conn, id);
			if(member == null) { throw new LoginFailException(); }
			
			if(!member.matchPassword(password)) { throw new LoginFailException(); }
			
			return new User(member.getId(), member.getEmail());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
