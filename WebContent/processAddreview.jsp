<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Review"%>
<%@ page import="dao.ReviewRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String reviewmoviename = request.getParameter("reviewmoviename");
	String reviewer = request.getParameter("reviewer");
	String writereview = request.getParameter("writereview");
	String grade = request.getParameter("grade");


	ReviewRepository dao = ReviewRepository.getInstance();

	Review newreview= new Review();

	newreview.setReviewmoviename(reviewmoviename);
	newreview.setReviewer(reviewer);
	newreview.setWritereview(writereview);
	newreview.setGrade(grade);
	
	
    dao.addReview(newreview);
	response.sendRedirect("reviews.jsp");
%>
