package jsp08_mvc_marvel.MarvelController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc_marvel.Marvel.MarvelDeleteService;
import jsp08_mvc_marvel.Marvel.MarvelDto;

public class MarveldeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int marvelId = Integer.parseInt(req.getParameter("marvelId"));
		
		MarvelDeleteService service = new MarvelDeleteService();
		
		boolean result = service.selectDelete(marvelId);
		
		req.setAttribute("result", result);
		req.getRequestDispatcher("/WEB-INF/marvel/deleteResult.jsp").forward(req, resp);
	}
	
	
	
	
}
