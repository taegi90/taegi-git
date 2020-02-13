package user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	private UserDAO userDAO;
	//로그인
	public UserVO loginProcess(UserVO vo) {
		return userDAO.loginProcess(vo);
	}
	public int idCheck(String id) {
		return userDAO.idCheck(id);
	}
	
	public int insert(UserVO vo) {
		return userDAO.insert(vo);
	}
}
