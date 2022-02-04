<!-- 사실 이 프로젝트를 만들 때 수업시간에 배운 장바구니 개념을 그대로 구현하기 위해서 
Movie.java 파일 안에 status라는 변수도 만들고 
이렇게 status를 통해 수량을 추가하는 방법으로 만들었는데 
영화 예매 시스템을 구현하다 보니 그냥 db를 통해 좌석수로 대체하는 것이 더 좋아보여서
해당 페이지는 실제로 사용되지 않게 되었습니다
 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>

<%
	String name = request.getParameter("id"); // movie.jsp로부터 받아옴
	if (name == null) {//id자체가 없거나 id가 빈 문자열인 경우
		response.sendRedirect("movies.jsp");
		//전송된 id가 없을 때 movies.jsp로 이동한다
		return;
	}

	MovieRepository dao = MovieRepository.getInstance();
	//new처럼 객체를 인스턴화 하는것인데 new와는 달리 최초에 할당된 하나의 메모리를 계속 쓰는 방식
	Movie movie = dao.getMovieByname(name);
	 //요청받은 제목에 맞는 Movie형 영화 하나를 가져온다
	if (movie == null) { //상품이 없으면 익셉션으로 sendRedirect
		response.sendRedirect("exceptionNoMovieName.jsp");
	}

	 
	 
	 //--위는 예외처리
	 //--아래부터 세션 시작
	 
	 
	ArrayList<Movie> movieList = dao.getAllMovies();//모든 상품들과 각 상품들의 세부정보들을 가져와서 
													//상품하나씩 movieList에 넣는다
	Movie movies = new Movie(); //단일 품목객체 하나 만듦
	for (int i = 0; i < movieList.size(); i++) {
		movies = movieList.get(i); //각 Movie타입 객체에 movieList 상품을 하나씩 넣는다
		if (movies.getMoviename().equals(name)) { 	//여기서 받은 상품의 id가 요청받은 id(이 코드 맨위)와 같다면 반복문 탈출
			break;
		}
	}//MovieRepository의 전체 품목들을 가져와서 넣어준 movieList에 요청받은 name의 영화가 존재하는지 확인 
	//여기까지 하면 movies에는 요청받은 name과 동일한 영화를 가지고 있는 것이다
	
	
	ArrayList<Movie> list = (ArrayList<Movie>) session.getAttribute("movielist");//장바구니 정보들을 list에 넣음
	if (list == null) { 
		list = new ArrayList<Movie>();
		session.setAttribute("movielist", list);
		//세션에  ArrayList<Movie>()가 새로 생긴 것
	}


//이 movielist 장바구니에 에 값이 추가 되는 것은 setAtrribute가 아니라 list자료구조에 add가 됨으로써 추가가 된다





//아래의 로직은 위에서  요청받은 name에 대한 상품이 우선 전체 상품 목록에 있는지 확인했으니
// 이제 장바구니에도 원래 있는지 없는지 확인하고 없으면 새로 등록, 있으면 갯수 +1 해주는 것이다


//list는 장바구니에 있는 영화들 전체 목록들을 다 가지고 있는 arrayList형 변수 이다
	int cnt = 0;
	Movie moviesQnt = new Movie();
	for (int i = 0; i < list.size(); i++) {//장바구니에 현재 있는 크기만큼 반복문을 돌린다
		moviesQnt = list.get(i);			//장바구니에 있는 물품들을 다 넣는다. list는 Movie타입이므로 goodsQnt도 Movie타입이어야 한다
		if (moviesQnt.getMoviename().equals(name)) {//장바구니에 있는 영화의 name이 현재 요청받은 name과 같다면 (= 현재 선택한 영화가 장바구니에도 있다면)
			cnt++;			
			int orderQuantity = moviesQnt.getStatus() + 1; 
							//여기서 getStatus는 세션 list로부터 받은 값이다.
							//결국 서버에 저장되어있는 값을 가져와서 수정하는 과정이다
			moviesQnt.setStatus(orderQuantity);
			//제품의 현재 수량에서 +1
		}
	}
				//아까 위에서 movies에는 요청받은 name과 동일한 영화를 가지고 있는 것이다라고 했다 그러므로
	if (cnt == 0) { //만약 요청한 id의 상품이 장바구니에 없는 거면
		movies.setStatus(1);
		list.add(movies);
		//요청받은 영화를 장바구니(list)에 추가하고 그 수량상태를 1로 해줌

	
		
	}

	response.sendRedirect("./status.jsp");
	//영화 하나를 장바구니에 담으면 바로 그냥 결제창으로 넘어가도록함
	//여러 영화를 동시에 예매하지 못하게 하기 위해 세션을 다 건드리면서 영화 이름이 겹치면 에러가 뜨게 하는 것 보다 이게 더 간편하다
%>