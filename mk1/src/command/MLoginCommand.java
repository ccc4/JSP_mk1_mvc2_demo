package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;

public class MLoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("mId");
		String pw = request.getParameter("mPw");
		
		MDao dao = MDao.getInstance();
		int result = dao.mlogin(id, pw);
		System.out.println(result);
		
		if(result == MDao.MEMBER_LOGIN_SUCCESS) {
			request.setAttribute("okMLogin", "1");
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("validMem", "Y");
			
		} else if(result == MDao.MEMBER_LOGIN_PW_NO_GOOD) {
			request.setAttribute("okMLogin", "0");
		} else if(result == MDao.MEMBER_LOGIN_IS_NOT) {
			request.setAttribute("okMLogin", "-1");
		}
		
		
	}

}
