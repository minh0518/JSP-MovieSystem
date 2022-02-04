/*WebMarket에서는 기존에 있던 상품을 추가하는 것이므로 ProductRepository의 addProduct를 사용했지만
난 기존에 있던 영화를 추가하는 것이 아니라 영화와 다른 '리뷰'를 추가하는 것이므로 따로 또 Review클래스와 ReviewRespository를
따로 만들었다*/

package dao;

import java.util.ArrayList;

import dto.Review;

public class ReviewRepository {
	
	private ArrayList<Review> listOfReviews= new ArrayList<Review>();
	
	private static ReviewRepository instance = new ReviewRepository();
	public static ReviewRepository getInstance(){
		return instance;
	} 

	
	public ReviewRepository() {
		
	}
	
	public ArrayList<Review> getAllReviews(){
		return listOfReviews;
	}
	
	
	public void addReview(Review review) {
		listOfReviews.add(review);
	}
	
	
}
