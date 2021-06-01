package jsp05_el.ex01;

public class Score {
	private int kor;
	private int eng;
	private int math;
	private int tot;
	private double avg;
	
	
	public Score() {}


	public Score(int kor, int eng, int math) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.tot = kor+eng+math;
		this.avg = tot/3.0;
	}


	public int getKor() {
		return kor;
	}


	public void setKor(int kor) {
		this.kor = kor;
	}


	public int getEng() {
		return eng;
	}


	public void setEng(int eng) {
		this.eng = eng;
	}


	public int getMath() {
		return math;
	}


	public void setMath(int math) {
		this.math = math;
	}


	public int getTot() {
		return tot;
	}


	public double getAvg() {
		return avg;
	}
}
