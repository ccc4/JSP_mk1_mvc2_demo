package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MDao;

public class MModifyCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String)request.getSession().getAttribute("id");
		String name = request.getParameter("mName");
		int gender = Integer.parseInt(request.getParameter("mGender"));
		int phone1 = Integer.parseInt(request.getParameter("mPhone1"));
		int phone2 = Integer.parseInt(request.getParameter("mPhone2"));
		String email1 = request.getParameter("mEmail1");
		String email2 = request.getParameter("mEmail2");
		String address = request.getParameter("mAddress");
		
		MDao dao = MDao.getInstance();
		int result = dao.mModify(id, name, gender, phone1, phone2, email1, email2, address);
		System.out.println(result);
		
		if(result == MDao.MEMBER_SUCCESS) {
			request.setAttribute("okMModify", "1");
		} else if(result == MDao.MEMBER_FAIL) {
			request.setAttribute("okMModify", "0");
		}
	}

}
