package commentBoard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class commentBoardDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	public List<commentBoardVO> select(commentBoardVO vo) {
		return sqlSession.selectList("test.select.selectMember", vo);
	}
	
	public int insert(commentBoardVO vo) {
		return sqlSession.insert("test.select.insertMember", vo);
	}

}
