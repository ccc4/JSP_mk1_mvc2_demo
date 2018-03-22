package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;

public class BDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String session_id = (String)request.getSession().getAttribute("id");
		String id = request.getParameter("bId");
		String idx = request.getParameter("bIdx");
		
		
		if(session_id == null) {
			request.setAttribute("okBDelete", "-1");
		} else {
			MDao dao = MDao.getInstance();
			int result = dao.bDelete(idx);
			
			if(result == MDao.MEMBER_SUCCESS) {
				request.setAttribute("okBDelete", "1");
				
			} else if(result == MDao.MEMBER_FAIL) {
				request.setAttribute("okBDelete", "0");
				request.setAttribute("bIdx", idx);
			}
		}
		
	}

}
