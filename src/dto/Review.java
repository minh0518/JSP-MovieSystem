package dto;
import java.io.Serializable;

public class Review implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	
	private String reviewmoviename;
	private String reviewer;
	private String writereview;
	private String grade;
	
	
	
	public String getReviewmoviename() {
		return reviewmoviename;
	}
	public void setReviewmoviename(String reviewmoviename) {
		this.reviewmoviename = reviewmoviename;
	}
	public String getReviewer() {
		return reviewer;
	}
	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}
	public String getWritereview() {
		return writereview;
	}
	public void setWritereview(String writereview) {
		this.writereview = writereview;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
