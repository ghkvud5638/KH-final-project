package show.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import show.dao.face.AdminDao;
import show.dto.Admin;
import show.dto.Member;
import show.dto.TB_SHOW;
import show.service.face.AdminService;
import show.util.AdminMemberPaging;
import show.util.Paging;

@Service
public class AdminServiceImpl implements AdminService {
	
	private static final Logger logger 	= LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	AdminDao adminDao;
	
	@Override
	public boolean adminLogin(Admin admin) {
		
		
		if( adminDao.selectAdminCnt(admin) >= 1 ) {
			return true;
		}
		
		
		return false;
	}

	@Override
	public Admin admininfo(String adminid) {
		return adminDao.selectAdminById(adminid);
	}

	@Override
	public List<Member> userAllList() {

		
		List<Member> list = adminDao.selectAllMember();
		
		
		return list;

	}

	@Override
	public AdminMemberPaging selectCntAll(AdminMemberPaging curPage) {
		
		//전체 게시글 수 조회
		int totalCount = adminDao.selectCntAll(curPage);
		
		//페이징 객체 생성
		AdminMemberPaging paging = new AdminMemberPaging(totalCount, curPage.getCurPage());
				
		return paging;
	}

	@Override
	public List<Member> selectMemberListPaging(AdminMemberPaging paging) {
		
		return adminDao.selectMemberListPaging(paging);
	}

	@Override
	public Member selectmemberIdView(Member member) {
		return adminDao.selectmemberIdView(member);
	}

	@Override
	public void memberUpdate(Member member) {
		adminDao.memberUpdate(member);
	}

	@Override
	public List<TB_SHOW> adminShowList() {
		return adminDao.adminShowList();
	}

	@Override
	public void adminShowUpdate(TB_SHOW tb_show) {
		adminDao.adminShowUpdate(tb_show);
		
	}

	@Override
	public TB_SHOW selectShowIdView(TB_SHOW tb_show) {
		
		return adminDao.selectShowIdView(tb_show);
	}

	@Override
	public void adminShowInsert(TB_SHOW tb_show) {
		
		adminDao.adminShowInsert(tb_show);
		
	}


}
