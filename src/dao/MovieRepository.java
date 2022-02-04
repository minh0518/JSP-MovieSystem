package dao;

import java.util.ArrayList;

import dto.Movie;

public class MovieRepository {
	
	private ArrayList<Movie> listOfMovies= new ArrayList<Movie>();
	//배열 원소들의 자료형이 Product인 ArrayList 생성
	
	private static MovieRepository instance = new MovieRepository();
	public static MovieRepository getInstance(){
		return instance;
	} //useBean을 사용하지 않고 다른 곳에서도 import만드로도 해당 클래스의 메소드까지 다 사용하기 위해 선언

	
	public MovieRepository() {
		Movie lalaland=new Movie();
		lalaland.setMoviename("LALALAND");
		lalaland.setPrice(10000);
		lalaland.setActor("엠마스톤,라이언 고슬링");
		lalaland.setDirector("데이미언 셔젤");
		lalaland.setGenre("로맨스,드라마");
		lalaland.setLimit("전체관람가");
		lalaland.setManufacturer("hollywood");
		lalaland.setDate("2016-12-07");
		lalaland.setFilename("lala.PNG");
		
		Movie darknight=new Movie();
		darknight.setMoviename("DarkNight");
		darknight.setPrice(10000);
		darknight.setActor("크리스찬 베일");
		darknight.setDirector("크리스토퍼 놀란");
		darknight.setGenre("액션,드라마");
		darknight.setLimit("12세관람가");
		darknight.setManufacturer("hollywood");
		darknight.setDate("2008-08-06");
		darknight.setFilename("dark.PNG");
		
		Movie socialnetwork=new Movie();
		socialnetwork.setMoviename("Social Network");
		socialnetwork.setPrice(10000);
		socialnetwork.setActor("제시 아이젠버그,앤드류 가필드");
		socialnetwork.setDirector("데이빗 핀처");
		socialnetwork.setGenre("드라마");
		socialnetwork.setLimit("12세관람가");
		socialnetwork.setManufacturer("hollywood");
		socialnetwork.setDate("2010-11-18");
		socialnetwork.setFilename("social.PNG");
		
		
		Movie furiousroad=new Movie();
		furiousroad.setMoviename("Fast&Furious9");
		furiousroad.setPrice(10000);
		furiousroad.setActor("빈 디젤,존 시나");
		furiousroad.setDirector("저스틴 린");
		furiousroad.setGenre("액션");
		furiousroad.setLimit("12세관람가");
		furiousroad.setManufacturer("hollywood");
		furiousroad.setDate("2021-05-19");
		furiousroad.setFilename("car.PNG");
		
		Movie cruella=new Movie();
		cruella.setMoviename("Cruella");
		cruella.setPrice(10000);
		cruella.setActor("엠마 스톤,엠마 톰슨");
		cruella.setDirector("크레이그 질레스피");
		cruella.setGenre("드라마");
		cruella.setLimit("12세관람가");
		cruella.setManufacturer("hollywood");
		cruella.setDate("2021-05-26");
		cruella.setFilename("cruella.PNG");
		
		Movie conjuring=new Movie();
		conjuring.setMoviename("The Conjuring3");
		conjuring.setPrice(10000);
		conjuring.setActor("패트릭 윌슨,베라 파미가");
		conjuring.setDirector("마이클 차베즈");
		conjuring.setGenre("공포,스릴러");
		conjuring.setLimit("15세관람가");
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
				//왠진 모르겠으나 여기에 return문을 사용할 수가 없음
				//그래서 Moviebyname에 넘겨주고 리턴하는 것
		}
			
	}
		return Moviebyname;
		
	}
	
	public void addMovie(Movie movie) {
		listOfMovies.add(movie);
	}
	
	
}
