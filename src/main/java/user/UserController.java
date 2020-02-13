package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import user.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/user/join.do")
	public String join() {
		return "/user/join";
	}
	@RequestMapping("/user/login.do")
	public String login() {
		return "/user/login";
	}
	@RequestMapping("/user/loginForm.do")
	public String loginForm() {
		return "/user/loginForm";
	}
	// 로그인 처리
		@RequestMapping("/user/loginProcess.do")
		public String loginProcess(Model model, UserVO vo, HttpServletRequest request) {
			UserVO uv = userService.loginProcess(vo);
			if (uv == null) {
				String msg = "회원가입을 해주세요.";
				String url = "/user/loginForm.do";
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
				return "include/alert";
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("userVO", uv);
				return "redirect:/index.do";
			}
		}
	@RequestMapping("/user/idCheck.do")
	public String idCheck(Model model, @RequestParam("id") String id) {
		int cnt = userService.idCheck(id);
		model.addAttribute("value", cnt);
		return "include/return";
	}
	
	@RequestMapping("/user/joinProcess.do")
	public String insert(Model model, UserVO vo) {
		int r = userService.insert(vo);
		String msg = "";
		String url = "";
		if (r > 0) {
			msg = "정상적으로 가입되었습니다.";
			url = "/index.do";
		} else {
			msg = "회원가입 실패";
			url = "/user/joinForm.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "include/alert";
	}
	
	
	
}
