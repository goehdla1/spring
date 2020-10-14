package com.ict.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.model.Paging;

@Controller
public class MyController {
	@Autowired
	private DAO dao;
	@Autowired
	private Paging paging;
	
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	public void setPaging(Paging paging) {
		this.paging = paging;
	}
	
	String cPage ;
	
	// 리스트
	@RequestMapping("list.do")
	public ModelAndView listCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("list");
		// 전체 게시물의 수 => 전체 페이지의 수 구하기 위한 과정
		int count = dao.getTotalCount();
		paging.setTotalRecord(count);
		
		// 전체 페이지의 수 
		if(paging.getTotalRecord()<= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			if(paging.getTotalRecord() % paging.getNumPerPage() !=0) {
				paging.setTotalPage(paging.getTotalPage()+1);
			}
		}
		
		// 현재페이지 구하기 
		cPage = request.getParameter("cPage");
		// index.jsp에서 들어오면 cPage의 값은 무조건 null 이다.
		// 나머지는 list에 넘어올때 무조건 cPage를 넣어줘야 한다.
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));
		}
		
		// 시작번호, 끝번호를 구한자.
		paging.setBegin((paging.getNowPage()-1)*paging.getNumPerPage()+1);
		paging.setEnd((paging.getBegin()-1)+paging.getNumPerPage());
				
		List<BVO> list = dao.getList(paging.getBegin(), paging.getEnd());
		
		
		// 시작블록, 끝블록을 구하자
		paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock())
				* paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock()-1);
				
		// 주의사항 : endBlock이 totalPage보다 클수이다.
		if(paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}
		
		mv.addObject("list",list);
		mv.addObject("paging", paging);
		return mv;
	}
	// 글쓰는 곳
	@RequestMapping("write.do")
	public ModelAndView writeCommand() {
		ModelAndView mv = new ModelAndView("write");
		return mv;
	}
	// 글쓰기
	@RequestMapping(value = "write_ok.do", method = RequestMethod.POST)
	public ModelAndView writeOKCommand(BVO bvo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:list.do");
		try {
			String path = request.getSession()
					.getServletContext().getRealPath("/resources/upload");
			MultipartFile file = bvo.getFile();
			if(file.isEmpty()) {
				bvo.setFile_name("");
			}else {
				bvo.setFile_name(bvo.getFile().getOriginalFilename());
			}
			int result = dao.getInsert(bvo);
			if(result>0) {
				file.transferTo(new File(path+"/"+bvo.getFile_name()));
			}
		} catch (Exception e) {
		}
		return mv;
	}
	// 원글
	@RequestMapping("onelist.do")
	public ModelAndView oneListCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("onelist");
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		
		// 조회수 업데이트 
		dao.getHit(b_idx);
		
		// 상세보기
		BVO bvo = dao.getOneList(b_idx);
		
		// session에 담기 
		request.getSession().setAttribute("bvo", bvo);
		
		// 댓글 가져오기 
		List<CVO> c_list = dao.getCommList(b_idx);
		
		mv.addObject("c_list", c_list);
		mv.addObject("cPage", cPage);
		return mv;
	}
	// 다운로드
	@RequestMapping("down.do")
	public void downCommand(HttpServletRequest request, 
			HttpServletResponse response) {
		try {
			String file_name = request.getParameter("file_name");
			String path = request.getSession().getServletContext()
					.getRealPath("/resources/upload/"+file_name);
			// 브라우저 설정
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition",
				"attachment; filename="+URLEncoder.encode(file_name,"utf-8"));
			// 실제 저장
			File file = new File(new String(path.getBytes()));
			FileInputStream fis = new FileInputStream(file);
			BufferedInputStream in = new BufferedInputStream(fis);
			OutputStream out = response.getOutputStream();
			
			FileCopyUtils.copy(in, out);
			
		} catch (Exception e) {
		}
	}
	
	
	/*
	  @ModelAttribute("cPage")String cPage 뜻은 
	  파라미터 cPage를 받아서 Model속성에 저장하라는 뜻 
	  이는 delete.jsp에서 cPage를 사용할 수 있게 한다.
	 */
	// 삭제 칸
	@RequestMapping("delete.do")
	public ModelAndView deleteCommand(@ModelAttribute("cPage")String cPage) {
		return new ModelAndView("delete");
	}
	// 삭제
	@RequestMapping("delete_ok.do")
	public ModelAndView deleteOKCommand(@RequestParam("cPage")String cPage,
			HttpSession session) {
		ModelAndView mv = 
				new ModelAndView("redirect:list.do?cPage="+cPage);
		BVO bvo = (BVO) session.getAttribute("bvo");
		dao.getDelete(bvo.getB_idx());
		return mv;
	}
	// 업데이트 칸
	@RequestMapping("update.do")
	public ModelAndView updateCommand(@ModelAttribute("cPage")String cPage) {
		return new ModelAndView("update");
	}
	// 업데이트
	@RequestMapping(value = "update_ok.do", method = RequestMethod.POST)
	public ModelAndView updateOKCommand(BVO bvo,
			HttpServletRequest request) {
		String cPage = request.getParameter("cPage");
		String f_name = request.getParameter("f_name");
		
		String b_idx = request.getParameter("b_idx");
		bvo.setB_idx(b_idx);
		
		ModelAndView mv 
		= new ModelAndView("redirect:onelist.do?cPage="+cPage+"&b_idx="+bvo.getB_idx());
		try {
			String path = request.getSession()
					.getServletContext().getRealPath("/resources/upload");
			
			MultipartFile file = bvo.getFile();
			if(file.isEmpty()) {
				bvo.setFile_name(f_name);
			}else {
				bvo.setFile_name(bvo.getFile().getOriginalFilename());
			}
			
			int result = dao.getUpdate(bvo);
			if(result>0) {
				file.transferTo(new File(path+"/"+bvo.getFile_name()));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
	// 댓글 쓰기
	@RequestMapping("c_write.do")
	public ModelAndView c_WriteCommand(CVO cvo,
			@RequestParam("cPage")String cPage) {
		ModelAndView mv = 
		    new ModelAndView("redirect:onelist.do?cPage="+cPage+
				 "&b_idx="+cvo.getB_idx());
		dao.getCommWrite(cvo); 
		return mv;
	}
	// 댓글 삭제
	@RequestMapping("c_delete.do")
	public ModelAndView c_DeleteCommand(CVO cvo,
			@RequestParam("cPage")String cPage) {
		ModelAndView mv = 
		    new ModelAndView("redirect:onelist.do?cPage="+cPage+
				 "&b_idx="+cvo.getB_idx());
		dao.getCommDelete(cvo); 
		return mv;
	}
	
	
	
}

















