package jsp08_mvc_marvel.MarvelController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc_marvel.Marvel.MarvelDao;
import jsp08_mvc_marvel.Marvel.MarvelDto;

public class ShowMarvelController extends HttpServlet {

	protected void doGet(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp)
			throws javax.servlet.ServletException, java.io.IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost");
		req.setCharacterEncoding("utf-8");

		List<MarvelDto> marvelList = new ArrayList<MarvelDto>();

		int pageNumber = 1;
		if (req.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
		}
		int firstRow = (pageNumber - 1) * 5;
		marvelList = MarvelDao.getInstance().getMarvelList(firstRow);

		req.setAttribute("marvel", marvelList);
		req.setAttribute("pageNumber", MarvelDao.getInstance().getPageNumber());

		req.getRequestDispatcher("/WEB-INF/marvel/showAllMarvel.jsp").forward(req, resp);

	}
}
