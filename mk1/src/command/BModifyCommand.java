package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;

public class BModifyCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String idx = request.getParameter("bIdx");
		String title = request.getParameter("bTitle");
		String content = request.getParameter("bContent");
		
		MDao dao = MDao.getInstance();
		int result = dao.bModify(idx, title, content);
		System.out.println(result);
		
		if(result == MDao.MEMBER_SUCCESS) {
			request.setAttribute("okBModify", "1");
			request.setAttribute("bIdx", idx);
		} else if(result == MDao.MEMBER_FAIL) {
			request.setAttribute("okBModify", "0");
			request.setAttribute("bIdx", idx);
		}
	}

}
