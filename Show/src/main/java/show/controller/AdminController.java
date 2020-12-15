package show.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import show.dto.Admin;
import show.dto.Member;
import show.dto.TB_SHOW;
import show.service.face.AdminService;
import show.util.AdminMemberPaging;

@Controller
public class AdminController {
private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping(value="/admin/main")  //대쉬보드 예정
	public void main() {
		logger.info("관리자메인페이지");
	}
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.GET)
	public void adminlogin() {
		logger.info("관리자로그인페이지");
	}
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.POST)
	public String adminloginProcess(
					Admin admin
					, HttpSession session) {
		
		logger.info(admin.toString());
		
		//아이디, 패스워드 DB 조회
		boolean isLogin = adminService.adminLogin(admin); //true-인증 성공
		
		//결과에 따른 세션처리
		if(isLogin) {
			session.setAttribute("login", isLogin);
			session.setAttribute("adminid", admin.getAdminid());
		}
		
		return "redirect:/admin/main";
	}
	
	@RequestMapping(value = "/admin/logout")
	public String adminlogout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login";
	}
	
	@RequestMapping(value="/admin/mypage") //세션값 테스트
	public void adminmypageTest(HttpSession session, Model model) {
		
		String adminid = (String) session.getAttribute("adminid");
		
		logger.info("로그인 정보 : " + session.getAttribute("adminid") );
		
		Admin info = adminService.admininfo(adminid);
		
		model.addAttribute("info", info);
		
	}

	
	@RequestMapping(value = "/admin/loginfail", method = RequestMethod.GET)
	public void adminloginfile() { }

	
	
//	@RequestMapping(value = "/admin/main") //대쉬보드 테스트
//	public String adminTestmain() {
//		
//		return "/admin/adm_main";
//		
//	}
	
	@RequestMapping(value = "/admin/memberlist") 
	public String adminMemberList( AdminMemberPaging curPage, Model model, HttpSession session ) {
		
		//페이징 계산
		AdminMemberPaging paging = adminService.selectCntAll(curPage);
		paging.setSearch(curPage.getSearch());
		paging.setSearchText(curPage.getSearchText());
		
		model.addAttribute("paging", paging);
		
		//게시글 목록
		List<Member> list = adminService.selectMemberListPaging(paging);
		model.addAttribute("list", list);

		return "/admin/adminmemberlist";
	}
	
	@RequestMapping(value = "/admin/memberupdate", method=RequestMethod.GET)
	public String adminMemberUpdateGet(Member member, Model model) {
		
		member = adminService.selectmemberIdView(member);
		model.addAttribute("view", member);
		
//		logger.info("업데이트 GET : " + model.addAttribute("view", member));
		
		return "/admin/adminmemberupdate";
	}
	
	@RequestMapping(value = "/admin/memberupdate", method=RequestMethod.POST)
	public String adminMemberUpdatePost(Member member) {
		
//		logger.info("업데이트 POST : " + member );
		
		adminService.memberUpdate(member);
		
		return "redirect:/admin/memberlist?search=member_id&searchText=" + member.getMember_id();
//		return "redirect:/admin/memberlist";

	}
	
	
//	@RequestMapping(value = "/adminstest/adminnotice")
//	public void adminNotice() {
	
//	}

	
//	@RequestMapping(value = "/adminstest/adminads")
//	public void adminAds() {
	
//	}
	
//	@RequestMapping(value = "/adminstest/admintiketing")
//	public void adminTiketing() {

//	}
	
	@RequestMapping(value = "/admin/showlist")
	public String adminShowList(Model model) {
		
		List<TB_SHOW> list = adminService.adminShowList();
		model.addAttribute("showList", list);
		
//		logger.info("어드민 쇼 리스트 : " + list);
		
		return "/admin/adminshowlist";
		
	}
	
	@RequestMapping(value = "/admin/showupdate", method = RequestMethod.GET)
	public String adminShowUpdateGet(TB_SHOW tb_show, Model model) {
		
//		logger.info("어드민 쇼 업데이트 : " + tb_show);
			
		tb_show = adminService.selectShowIdView(tb_show);
		model.addAttribute("view", tb_show);	
		
//		logger.info("어드민 쇼 업데이트 view : " + model.addAttribute("view", tb_show) );
		
		return "/admin/adminshowupdate";
		
	}
	
	@RequestMapping(value = "/admin/showupdate", method = RequestMethod.POST)
	public String adminShowUpdatePost(TB_SHOW tb_show, Model model) {
		
//		logger.info("어드민 쇼 업데이트 들어갑니다 : " + tb_show);
			
		adminService.adminShowUpdate(tb_show);
		
		return "redirect:/admin/showlist";
		
	}
	
	@RequestMapping(value = "/admin/showinsert", method = RequestMethod.GET)
	public String adminShowInsertGet() {
		
		return "/admin/adminshowinsert";
	}
	
	@RequestMapping(value = "/admin/showinsert", method = RequestMethod.POST)
	public String adminShowInsertPost(TB_SHOW tb_show) {
		
//		logger.info("쇼 인설트 : " + tb_show);
		
		adminService.adminShowInsert(tb_show);
		
		
		return "redirect:/admin/showlist";
	}
	

	
	
	
//	@RequestMapping(value = "/adminstest/adminattraction")
//	public void adminAttraction() {
	
//	}

	
	
}

