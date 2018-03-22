package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;
import dto.BDto;

public class BContentViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String idx = request.getParameter("bIdx");
		
		MDao dao = MDao.getInstance();
		BDto dto = dao.bContentView(idx);
		request.setAttribute("bContentView", dto);
	}

}
