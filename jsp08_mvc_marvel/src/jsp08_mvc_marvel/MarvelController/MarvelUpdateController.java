package jsp08_mvc_marvel.MarvelController;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc_marvel.Marvel.MarvelDto;
import jsp08_mvc_marvel.Marvel.MarvelUpdateService;

public class MarvelUpdateController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int marvelId = Integer.parseInt(req.getParameter("marvelId"));
		MarvelUpdateService service = new MarvelUpdateService();
		try {
			MarvelDto marvelDto = service.select(marvelId);
			if(marvelDto != null) {
				req.setAttribute("marvelDto", marvelDto);
				req.getRequestDispatcher("/WEB-INF/marvel/update.jsp").forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String marvelIdStr = req.getParameter("marvelId");
		int marvelId = Integer.parseInt(marvelIdStr);
		MarvelUpdateService service = new MarvelUpdateService();
		
		boolean result = service.update(new MarvelDto(
				marvelId,
				req.getParameter("title"),
				req.getParameter("titleEng"),
				LocalDate.parse(req.getParameter("releaseDate")),
				Long.parseLong(req.getParameter("worldBoxOffice")),
				LocalDateTime.parse(req.getParameter("writeDate")),
				LocalDateTime.now()));
		req.setAttribute("result", result);
		
		req.getRequestDispatcher("/WEB-INF/marvel/updateResult.jsp").forward(req, resp);
		
	}
}
