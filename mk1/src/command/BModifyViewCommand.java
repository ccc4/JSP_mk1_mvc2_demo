package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;
import dto.BDto;

public class BModifyViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("bId");
		String idx = request.getParameter("bIdx");
		
		MDao dao = MDao.getInstance();
		BDto dto = dao.bContentModify(idx);
		request.setAttribute("bModify_view", dto);
		request.setAttribute("bId", id);
	}

}
