package an.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import an.com.bean.CommunityBean;

@Component
public class CommunityDao extends SqlSessionDaoSupport {

	@Autowired
	protected void initDao(SqlSessionTemplate st) throws Exception {
		this.setSqlSessionTemplate(st);
	}

	public List<CommunityBean> selectCommunity(HashMap<String, Object> map) {

		return this.getSqlSession().selectList("selectCommunity", map);

	}

	public void insertCommunity(CommunityBean cb) {

		this.getSqlSession().insert("insertCommunity", cb);
	}

	public Integer getCommunitySeq() {

		return this.getSqlSession().selectOne("getCommunitySeq");
	}
}
