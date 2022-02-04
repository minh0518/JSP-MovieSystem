package dao;

import java.util.ArrayList;

import dto.Soon;

public class SoonRepository {
	
	private ArrayList<Soon> listOfSoons= new ArrayList<Soon>();
	//배열 원소들의 자료형이 Product인 ArrayList 생성
	
	private static SoonRepository instance = new SoonRepository();
	public static SoonRepository getInstance(){
		return instance;
	} //useBean을 사용하지 않고 다른 곳에서도 import만드로도 해당 클래스의 메소드까지 다 사용하기 위해 선언

	
	public SoonRepository() {
		Soon eternals=new Soon();
		eternals.setMoviename("Eternals");
		eternals.setActor("안젤리나졸리,마동석");
		eternals.setDirector("클로이 자오");
		eternals.setGenre("액션,SF");
		eternals.setLimit("전체관람가");
		eternals.setManufacturer("hollywood");
		eternals.setDate("2021-11");
		eternals.setFilename("eternals.PNG");
		
		Soon blackwidow=new Soon();
		blackwidow.setMoviename("Black Widow");
		blackwidow.setActor("스칼렛 요한슨, 플로렌스 퓨");
		blackwidow.setDirector("케이트 쇼트랜드");
		blackwidow.setGenre("액션");
		blackwidow.setLimit("12세관람가");
		blackwidow.setManufacturer("hollywood");
		blackwidow.setDate("2021-07-07");
		blackwidow.setFilename("black.PNG");
		
		Soon venom=new Soon();
		venom.setMoviename("Venom-Let there be carnage");
		venom.setActor("톰 하디,우디 헤럴슨");
		venom.setDirector("엔디 서키스");
		venom.setGenre("액션,스릴러");
		venom.setLimit("미정");
		venom.setManufacturer("hollywood");
		venom.setDate("2021-11");
		venom.setFilename("venom.PNG");
		
		Soon notimetodie=new Soon();
		notimetodie.setMoviename("007-No Time To Die");
		notimetodie.setActor("다니엘 크레이그,아나 디 아르마스");
		notimetodie.setDirector("캐리 후쿠나가");
		notimetodie.setGenre("액션,드라마");
		notimetodie.setLimit("12세관람가");
		notimetodie.setManufacturer("hollywood");
		notimetodie.setDate("2021-11");
		notimetodie.setFilename("007.PNG");
		
		
		Soon suicidesquad=new Soon();
		suicidesquad.setMoviename("Suicide Squad");
		suicidesquad.setActor("마고로비,이드리스 엘바,존 시나");
		suicidesquad.setDirector("제임스 건");
		suicidesquad.setGenre("액션,SF");
		suicidesquad.setLimit("12세관람가");
		suicidesquad.setManufacturer("hollywood");
		suicidesquad.setDate("2021-8");
		suicidesquad.setFilename("suicide.PNG");
		
		
		Soon spiderman=new Soon();
		spiderman.setMoviename("Spiderman-No way Home");
		spiderman.setActor("톰 홀랜드,앤드류 가필드, 토비 맥과이어");
		spiderman.setDirector("존 왓츠");
		spiderman.setGenre("액션,SF");
		spiderman.setLimit("12세관람가");
		spiderman.setManufacturer("hollywood");
		spiderman.setDate("2021-12");
		spiderman.setFilename("spider.PNG");
		
		listOfSoons.add(eternals);
		listOfSoons.add(blackwidow);
		listOfSoons.add(venom);
		listOfSoons.add(notimetodie);
		listOfSoons.add(suicidesquad);
		listOfSoons.add(spiderman);
		
	}
	
	public ArrayList<Soon> getAllMovies(){
		return listOfSoons;
	}
	
	
	public Soon getMovieByname(String Moviename) {
		
		Soon Moviebyname=null;
		
		for(int i=0; i<listOfSoons.size(); i++) {
			
			Soon movie=listOfSoons.get(i);
			
			if(movie != null && movie.getMoviename() != null && movie.getMoviename().equals(Moviename)) {
			
				Moviebyname=movie;
				break;
				//왠진 모르겠으나 여기에 return문을 사용할 수가 없음
				//그래서 Moviebyname에 넘겨주고 리턴하는 것
		}
			
	}
		return Moviebyname;
		
	}
	
	public void addMovie(Soon movie) {
		listOfSoons.add(movie);
	}
	
	
}
