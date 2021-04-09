package egovframework.let.main.web;

import java.util.Map;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSManageService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * 템플릿 메인 페이지 컨트롤러 클래스(Sample 소스)
 * @author 실행환경 개발팀 JJY
 * @since 2011.08.31
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2011.08.31  JJY            최초 생성
 *
 * </pre>
 */
@Controller@SessionAttributes(types = ComDefaultVO.class)
@Slf4j
public class EgovMainController {
	@RequestMapping(value = "/cmm/main/main.do")
	public String getMgtMainPage(HttpServletRequest request, ModelMap model, HttpSession ses) throws Exception{
		
		
		String realPath = ses.getServletContext().getContextPath();
		System.out.println("ajax realPath : " + realPath);
		return "main/home";
	}
//	/**
//	 * EgovBBSManageService
//	 */
//	@Resource(name = "EgovBBSManageService")
//   private EgovBBSManageService bbsMngService;
//
//	/**
//	 * 메인 페이지에서 각 업무 화면으로 연계하는 기능을 제공한다.
//	 *
//	 * @param request
//	 * @param commandMap
//	 * @exception Exception Exception
//	 */
//	@RequestMapping(value = "/cmm/forwardPage.do")
//	public String forwardPageWithMenuNo(HttpServletRequest request, @RequestParam Map<String, Object> commandMap)
//	  throws Exception{
//		return "";
//	}

}