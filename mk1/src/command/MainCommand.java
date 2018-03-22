package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;
import dto.BDto;

public class MainCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		MDao dao = MDao.getInstance();
		ArrayList<BDto> dtos = dao.bList();
		
		request.setAttribute("bList", dtos);
	}

}
