package member.command;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import member.service.DuplicateIdException;
import member.service.JoinRequest;
import member.service.JoinService;


public class JoinHandler implements CommandHandler {
	private static final String FORM_VIEW = "/view/Join.jsp";
	private static final String LOGIN_VIEW = "/view/login.jsp";
	private JoinService joinService = new JoinService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) { 
		System.out.println("join get...?");
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		JoinRequest joinReq = new JoinRequest();
		joinReq.setId(req.getParameter("id"));
		joinReq.setName(req.getParameter("name"));
		joinReq.setPassword(req.getParameter("password"));
		joinReq.setConfirmPassword(req.getParameter("confirmPassword"));
		joinReq.setEmail(req.getParameter("email"));
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		joinReq.validate(errors);
		
		if(!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		try {
			joinService.join(joinReq);
			return LOGIN_VIEW;
		} catch (DuplicateIdException e) {
			errors.put("duplicateId", Boolean.TRUE);
			System.out.println("중복 발생..");
			return FORM_VIEW;
		}catch (Exception e) {
			System.out.println("갑작스러운 에러 발생" + e);
		}
		return null;
	}
}
