package ex01;

import java.util.ArrayList;
import java.util.List;

public class MarbleMovie {
	
	private String title;
	private String engTitle;
	private String world;
	List<String> marbleList = new ArrayList<String>();
	static int num = 1;
	
	
	public MarbleMovie(String title, String engTitle, String world) {
		this.title = title;
		this.engTitle = engTitle;
		this.world = world;
	}
	
	public MarbleMovie() {}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEngTitle() {
		return engTitle;
	}

	public void setEngTitle(String engTitle) {
		this.engTitle = engTitle;
	}

	public String getWorld() {
		return world;
	}

	public void setWorld(String world) {
		this.world = world;
	}

	public List<String> getmarbleList() {
		
		
		return marbleList;
	}

	public void setting(String title,String engTitle,String world,String launch) {
		String list = "한글제목: "+title+"\t 영화제목:"+engTitle+"\t 월드박스오피스:"+world+"\t 개봉일:"+launch; 
		marbleList.add(list);
		
	}
	
	


	

	
	
	
}
