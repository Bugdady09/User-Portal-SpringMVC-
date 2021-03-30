package com.jonayed.Controller;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.jonayed.Dao.GetUserDetails;
import com.jonayed.Dao.InsertUser;
import com.jonayed.Dao.PassWordChange;
import com.jonayed.Dao.UserForAdmin;
import com.jonayed.Model.ChangePassSuccess;
import com.jonayed.Model.UserLogIn;
import com.jonayed.Model.UserRegistratrion;

@Controller
public class All_Controller {

	@RequestMapping(value = { "/", "index" })
	public String getIndex() {

		return "index";
	}

	@RequestMapping("/login")
	public String getLogIn() {

		return "Login";
	}

	@RequestMapping("/login-Success")
	public String getLogInSuccess(UserLogIn logUser, HttpServletRequest request) {

		HttpSession session = request.getSession();

		UserRegistratrion userDetails = new GetUserDetails().userGetails(logUser);
		session.setAttribute("userDetails", userDetails);

		if (userDetails != null) {
			return "user-profile";
		} else
			return "Login";

	}

	@RequestMapping("/loginAdmin")
	public String adminLogIn() {

		return "AdminLogin";
	}

	@RequestMapping("/loginAdmin-success")
	public String adminLogInSuccess(Model model, UserLogIn AdminlogUser, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (AdminlogUser.getEmail().equals("admin@localhost.local") && AdminlogUser.getPassward().equals("admin")) {

			ResultSet rs = new UserForAdmin().getAllUsers();
			model.addAttribute("allUsers", rs);
			session.setAttribute("AdminlogUser", AdminlogUser);
			return "admin";
		} else
			return "AdminLogin";
	}

	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("userDetails");

		return "index";
	}

	@RequestMapping("/adminLogout")
	public String logOutAdmin(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("AdminlogUser");

		return "index";
	}

	@RequestMapping("/changepass")
	public String getPasswordChange() {

		return "change-pass";

	}

	@RequestMapping("/changepass-success")
	public String getPasswordChangeSuccess(ChangePassSuccess userinfo, HttpServletRequest request) {

		HttpSession session = request.getSession();

		if (session.getAttribute("userDetails") != null) {

			UserRegistratrion userDetails = (UserRegistratrion) session.getAttribute("userDetails");
			ChangePassSuccess user = new ChangePassSuccess(userDetails.getEmai1(), userinfo.getOldPass(),
					userinfo.getNewPass());

			boolean success = new PassWordChange().updatePass(user);

			if (success) {
				return "user-profile";
			} else {
				return "Login";
			}

		} else {
			return "Login";
		}

	}

	@RequestMapping("/registration")
	public String getRegistration() {

		return "registration-page";
	}

	@RequestMapping("/registration-success")
	public String registrationSuccess(UserRegistratrion user, Model model) {

		boolean insert = new InsertUser().insert(user);

		if (insert) {
			return "Login";
		} else
			return "registration-page";
	}

	@RequestMapping("/getEmailAvailability")
	public String EmailAvailability() {

		return "find-email-db";
	}

	@RequestMapping("/profile")
	public String getProfile(HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session.getAttribute("userDetails") != null) {
			return "user-profile";
		} else {
			return "Login";
		}

	}

	@RequestMapping("/admin")
	public String getAdmin(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		if (session.getAttribute("AdminlogUser") != null) {
			ResultSet rs = new UserForAdmin().getAllUsers();
			model.addAttribute("allUsers", rs);
			return "admin";
		} else {
			return "AdminLogin";
		}

	}

	@RequestMapping("/searchUser")
	public String getAdmin() {

		return "searchUser";
	}

}
