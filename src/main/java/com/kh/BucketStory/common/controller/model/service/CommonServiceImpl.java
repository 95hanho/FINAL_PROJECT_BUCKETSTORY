package com.kh.BucketStory.common.controller.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.BucketStory.common.controller.model.dao.CommonDAO;
import com.kh.BucketStory.member.model.vo.Member;

@Service("cService")
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonDAO cDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member memberLogin(Member m) {
		return cDAO.memberLogin(sqlSession, m);
	}
	
	
}
