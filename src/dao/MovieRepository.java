package dao;

import java.util.ArrayList;

import dto.Movie;

public class MovieRepository {
	
	private ArrayList<Movie> listOfMovies= new ArrayList<Movie>();
	//�迭 ���ҵ��� �ڷ����� Product�� ArrayList ����
	
	private static MovieRepository instance = new MovieRepository();
	public static MovieRepository getInstance(){
		return instance;
	} //useBean�� ������� �ʰ� �ٸ� �������� import����ε� �ش� Ŭ������ �޼ҵ���� �� ����ϱ� ���� ����

	
	public MovieRepository() {
		Movie lalaland=new Movie();
		lalaland.setMoviename("LALALAND");
		lalaland.setPrice(10000);
		lalaland.setActor("��������,���̾� ����");
		lalaland.setDirector("���̹̾� ����");
		lalaland.setGenre("�θǽ�,���");
		lalaland.setLimit("��ü������");
		lalaland.setManufacturer("hollywood");
		lalaland.setDate("2016-12-07");
		lalaland.setFilename("lala.PNG");
		
		Movie darknight=new Movie();
		darknight.setMoviename("DarkNight");
		darknight.setPrice(10000);
		darknight.setActor("ũ������ ����");
		darknight.setDirector("ũ�������� ���");
		darknight.setGenre("�׼�,���");
		darknight.setLimit("12��������");
		darknight.setManufacturer("hollywood");
		darknight.setDate("2008-08-06");
		darknight.setFilename("dark.PNG");
		
		Movie socialnetwork=new Movie();
		socialnetwork.setMoviename("Social Network");
		socialnetwork.setPrice(10000);
		socialnetwork.setActor("���� ����������,�ص�� ���ʵ�");
		socialnetwork.setDirector("���̺� ��ó");
		socialnetwork.setGenre("���");
		socialnetwork.setLimit("12��������");
		socialnetwork.setManufacturer("hollywood");
		socialnetwork.setDate("2010-11-18");
		socialnetwork.setFilename("social.PNG");
		
		
		Movie furiousroad=new Movie();
		furiousroad.setMoviename("Fast&Furious9");
		furiousroad.setPrice(10000);
		furiousroad.setActor("�� ����,�� �ó�");
		furiousroad.setDirector("����ƾ ��");
		furiousroad.setGenre("�׼�");
		furiousroad.setLimit("12��������");
		furiousroad.setManufacturer("hollywood");
		furiousroad.setDate("2021-05-19");
		furiousroad.setFilename("car.PNG");
		
		Movie cruella=new Movie();
		cruella.setMoviename("Cruella");
		cruella.setPrice(10000);
		cruella.setActor("���� ����,���� �轼");
		cruella.setDirector("ũ���̱� ��������");
		cruella.setGenre("���");
		cruella.setLimit("12��������");
		cruella.setManufacturer("hollywood");
		cruella.setDate("2021-05-26");
		cruella.setFilename("cruella.PNG");
		
		Movie conjuring=new Movie();
		conjuring.setMoviename("The Conjuring3");
		conjuring.setPrice(10000);
		conjuring.setActor("��Ʈ�� ����,���� �Ĺ̰�");
		conjuring.setDirector("����Ŭ ������");
		conjuring.setGenre("����,������");
		conjuring.setLimit("15��������");
		conjuring.setManufacturer("hollywood");
		conjuring.setDate("2021-06-03");
		conjuring.setFilename("conjuring.PNG");
		
		
		
		
		
		
		
		
		listOfMovies.add(lalaland);
		listOfMovies.add(darknight);
		listOfMovies.add(socialnetwork);
		listOfMovies.add(furiousroad);
		listOfMovies.add(cruella);
		listOfMovies.add(conjuring);
		
	}
	
	public ArrayList<Movie> getAllMovies(){
		return listOfMovies;
	}
	
	
	public Movie getMovieByname(String Moviename) {
		
		Movie Moviebyname=null;
		
		for(int i=0; i<listOfMovies.size(); i++) {
			
			Movie movie=listOfMovies.get(i);
			
			if(movie != null && movie.getMoviename() != null && movie.getMoviename().equals(Moviename)) {
			
				Moviebyname=movie;
				break;
				//���� �𸣰����� ���⿡ return���� ����� ���� ����
				//�׷��� Moviebyname�� �Ѱ��ְ� �����ϴ� ��
		}
			
	}
		return Moviebyname;
		
	}
	
	public void addMovie(Movie movie) {
		listOfMovies.add(movie);
	}
	
	
}
