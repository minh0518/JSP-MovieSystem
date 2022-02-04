/*WebMarket������ ������ �ִ� ��ǰ�� �߰��ϴ� ���̹Ƿ� ProductRepository�� addProduct�� ���������
�� ������ �ִ� ��ȭ�� �߰��ϴ� ���� �ƴ϶� ��ȭ�� �ٸ� '����'�� �߰��ϴ� ���̹Ƿ� ���� �� ReviewŬ������ ReviewRespository��
���� �������*/

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
