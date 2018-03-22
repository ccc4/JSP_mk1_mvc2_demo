package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;
import dto.MDto;

public class MModifyViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String)request.getSession().getAttribute("id");
		
		MDao dao = MDao.getInstance();
		MDto dto = dao.mModifyGetMember(id);
		request.setAttribute("getMember", dto);
	}

}
