package dto;
import java.io.Serializable;

public class Movie implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String moviename;	//��ȭ �̸�
	private String genre;		//��ȭ �帣
	private Integer price; 		//����
	
	private String actor;		//�⿬��
	private String director;	//��ȭ����
	private String limit;		//�����������
	private String manufacturer;//��ȭ��
	private String date;		//������
	private String filename;	//�̹��� ���ε带 ���� �����̸�
	private int status;
	
	
	
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
}
