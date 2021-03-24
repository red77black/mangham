package com.sc.it.dao;

<<<<<<< HEAD
=======
import java.util.ArrayList;

>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
import com.sc.it.vo.WordVO;

public interface SuSooWordMapper {

<<<<<<< HEAD
	// 단어 생성
	public int insertWord(WordVO word);

=======
	//전체 단어 가져오기
	public ArrayList<WordVO> selectAllWord(String id);
	
	//암기 단어로 체인지
	public int updateMemoWord(int word_num);
	
	//미암기 단어로 체인지
	public int updateNotMemoWord(int word_num);
	
	//단어 삭제
	public int deleteWord(int word_num);
	
	//전체 단어 갯수
	public int countWord(String id);
	
	//암기 단어 갯수
	public int countMemoWord(String id);
	
	//미암기 단어 갯수
	public int countNotMemoWord(String id);
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
}
