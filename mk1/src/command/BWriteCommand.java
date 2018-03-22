package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;

public class BWriteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = (String)request.getSession().getAttribute("id");
		String title = request.getParameter("bTitle");
		String content = request.getParameter("bContent");
		
		MDao dao = MDao.getInstance();
		int result = dao.bWrite(id, title, content);
		System.out.println(result);
		
		if(result == MDao.MEMBER_SUCCESS) {
			request.setAttribute("okBWrite", "1");
		} else if(result == MDao.MEMBER_FAIL) {
			request.setAttribute("okBWrite", "0");
		}
	}

}
