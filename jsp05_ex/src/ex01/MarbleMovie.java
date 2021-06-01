package ex01;

import java.util.ArrayList;
import java.util.List;

public class MarbleMovie {
	
	private String title;
	private String engTitle;
	private String world;
	List<String> marbleList = new ArrayList<String>();
	public MarbleMovie(String title, String engTitle, String world) {
		this.title = title;
		this.engTitle = engTitle;
		this.world = world;
		marbleList.add(title);
		marbleList.add(engTitle);
		marbleList.add(world);
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

	
	public void setMarbleList(List<String> marbleList) {
		this.marbleList = marbleList;
	}

	

	
	
	
}
