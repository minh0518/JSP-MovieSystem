package dao;

import java.util.ArrayList;

import dto.Soon;

public class SoonRepository {
	
	private ArrayList<Soon> listOfSoons= new ArrayList<Soon>();
	//�迭 ���ҵ��� �ڷ����� Product�� ArrayList ����
	
	private static SoonRepository instance = new SoonRepository();
	public static SoonRepository getInstance(){
		return instance;
	} //useBean�� ������� �ʰ� �ٸ� �������� import����ε� �ش� Ŭ������ �޼ҵ���� �� ����ϱ� ���� ����

	
	public SoonRepository() {
		Soon eternals=new Soon();
		eternals.setMoviename("Eternals");
		eternals.setActor("������������,������");
		eternals.setDirector("Ŭ���� �ڿ�");
		eternals.setGenre("�׼�,SF");
		eternals.setLimit("��ü������");
		eternals.setManufacturer("hollywood");
		eternals.setDate("2021-11");
		eternals.setFilename("eternals.PNG");
		
		Soon blackwidow=new Soon();
		blackwidow.setMoviename("Black Widow");
		blackwidow.setActor("��Į�� ���ѽ�, �÷η��� ǻ");
		blackwidow.setDirector("����Ʈ ��Ʈ����");
		blackwidow.setGenre("�׼�");
		blackwidow.setLimit("12��������");
		blackwidow.setManufacturer("hollywood");
		blackwidow.setDate("2021-07-07");
		blackwidow.setFilename("black.PNG");
		
		Soon venom=new Soon();
		venom.setMoviename("Venom-Let there be carnage");
		venom.setActor("�� �ϵ�,��� �췲��");
		venom.setDirector("���� ��Ű��");
		venom.setGenre("�׼�,������");
		venom.setLimit("����");
		venom.setManufacturer("hollywood");
		venom.setDate("2021-11");
		venom.setFilename("venom.PNG");
		
		Soon notimetodie=new Soon();
		notimetodie.setMoviename("007-No Time To Die");
		notimetodie.setActor("�ٴϿ� ũ���̱�,�Ƴ� �� �Ƹ�����");
		notimetodie.setDirector("ĳ�� ������");
		notimetodie.setGenre("�׼�,���");
		notimetodie.setLimit("12��������");
		notimetodie.setManufacturer("hollywood");
		notimetodie.setDate("2021-11");
		notimetodie.setFilename("007.PNG");
		
		
		Soon suicidesquad=new Soon();
		suicidesquad.setMoviename("Suicide Squad");
		suicidesquad.setActor("����κ�,�̵帮�� ����,�� �ó�");
		suicidesquad.setDirector("���ӽ� ��");
		suicidesquad.setGenre("�׼�,SF");
		suicidesquad.setLimit("12��������");
		suicidesquad.setManufacturer("hollywood");
		suicidesquad.setDate("2021-8");
		suicidesquad.setFilename("suicide.PNG");
		
		
		Soon spiderman=new Soon();
		spiderman.setMoviename("Spiderman-No way Home");
		spiderman.setActor("�� Ȧ����,�ص�� ���ʵ�, ��� �ư��̾�");
		spiderman.setDirector("�� ����");
		spiderman.setGenre("�׼�,SF");
		spiderman.setLimit("12��������");
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
				//���� �𸣰����� ���⿡ return���� ����� ���� ����
				//�׷��� Moviebyname�� �Ѱ��ְ� �����ϴ� ��
		}
			
	}
		return Moviebyname;
		
	}
	
	public void addMovie(Soon movie) {
		listOfSoons.add(movie);
	}
	
	
}
