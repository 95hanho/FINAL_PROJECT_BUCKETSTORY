package com.kh.BucketStory.expert.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.BucketStory.admin.model.vo.Festival;
import com.kh.BucketStory.bucket.model.vo.BucketList;
import com.kh.BucketStory.bucket.model.vo.ComInBucket;
import com.kh.BucketStory.bucket.model.vo.Media;
import com.kh.BucketStory.common.model.vo.Member;
import com.kh.BucketStory.expert.model.dao.ExpertDAO;
import com.kh.BucketStory.expert.model.vo.C_event;
import com.kh.BucketStory.expert.model.vo.Company;
import com.kh.BucketStory.expert.model.vo.EsRequest;
import com.kh.BucketStory.expert.model.vo.Esoption;
import com.kh.BucketStory.expert.model.vo.Estimate;
import com.kh.BucketStory.expert.model.vo.PageInfo;
import com.kh.BucketStory.member.model.vo.Board;

@Service("ExService")
public class ExpertServiceImpl implements ExpertService {

	@Autowired
	private ExpertDAO exDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Company selectCompanyInfo(String coId) {
		return exDAO.selectCompanyInfo(sqlSession,coId);
	}
	@Override
	public int updateExInfo(Company com) {
		return exDAO.updateExInfo(sqlSession,com);
	}
	@Override
	public ArrayList<BucketList> selectCateList(int catenum) {
		return exDAO.selectCateList(sqlSession,catenum);
	}
	
	@Override
	public int insertBucket(ComInBucket hm) {
		return exDAO.insertBucket(sqlSession, hm);
	}
	@Override
	public ArrayList<BucketList> selectComBucket(String coId) {
		return exDAO.selectComBucket(sqlSession,coId);
	}
	@Override
	public BucketList selectBucket(int bkNo) {
		return exDAO.selectBucket(sqlSession,bkNo);
	}
	@Override
	public int insertEsrequest(EsRequest er) {
		return exDAO.insertEsrequest(sqlSession,er);
	}
	@Override
	public ArrayList<EsRequest> selectEsRequest(String coId) {
		return exDAO.selectEsRequest(sqlSession,coId);
	}
	@Override
	public EsRequest RequestDetail(String esr_no) {
		return exDAO.RequestDetail(sqlSession,esr_no);
	}
	@Override
	public Member selectMember(String userId) {
		return exDAO.selectMember(sqlSession,userId);
	}
	@Override
	public Media selectproImg(String coId) {
		return exDAO.selectproImg(sqlSession,coId);
	}
	@Override
	public int insertEstimate(Estimate es, ArrayList<Media> media) {
		return exDAO.insertEstimate(sqlSession,es,media);
	}

	@Override
	public int insertEsmedia(Media media) {
		return exDAO.insertEsMedia(sqlSession,media);
	}
@Override
	public ArrayList<Estimate> selectEstimteList(PageInfo pi,String coId) {
		return exDAO.selectEstimateList(sqlSession,coId,pi);
	}
@Override
	public Estimate selectEstimate(String esno) {
		return exDAO.selectEstimate(sqlSession, esno);
	}
	@Override
	public EsRequest selectEsRequestOne(int esr_no) {
		return exDAO.selectEsRequestOne(sqlSession,esr_no);
	}
	@Override
	public ArrayList<Media> selectMediaList(int es_no) {
		return exDAO.selectMediaList(sqlSession,es_no);
	}
	@Override
	public ArrayList<Estimate> selectMakingEstimteList(PageInfo pi,String coId) {
		return exDAO.selectMakingEstimateList(sqlSession,coId,pi);
	}
	@Override
	public int updateEstimate(Estimate es) {
		return exDAO.updateEstimate(sqlSession,es);
	}
@Override
	public int deleteMedia(String mnumber) {
		return exDAO.deleteMedia(sqlSession,mnumber);
	}
	@Override
	public int updateEsRequestPosition(int esr_no) {
		return exDAO.updateEsRequestPosition(sqlSession,esr_no);
	}
	@Override
	public int updateEsmedia(Media media) {
		return exDAO.updateEsmedia(sqlSession,media);
	}
	@Override
	public ArrayList<Media> selectAllBucketMediaList() {
		return exDAO.selectAllBucketMediaList(sqlSession);
	}
	@Override
	public ArrayList<Estimate> selectCompleteEstimteList(PageInfo pi,String coId) {
		return exDAO.selectCompleteEstimateList(sqlSession,coId,pi);
	}
	@Override
	public ArrayList<Estimate> selectUserEstimate(String userId) {
		return exDAO.selectUserEstimate(sqlSession,userId);
	}
@Override
	public ArrayList<Estimate> selectMyEstimate(Map<String, String> m) {
		return exDAO.selectMyEstimate(sqlSession,m);
	}
	@Override
	public int insertReview(Estimate es) {
		return exDAO.insertReview(sqlSession,es);
	}
	@Override
	public int insertEvent(C_event ce) {
		return exDAO.insertEvent(sqlSession,ce);
	}
	@Override
	public int deleteEstimate(int es_no) {
		return exDAO.deleteEstimate(sqlSession,es_no);
	}
	@Override
	public int getEsListCount(String string) {
		return exDAO.getEsListCount(sqlSession,string);
	}
	@Override
	public ArrayList<EsRequest> selectEsRequest(PageInfo pi, String coId) {
		return exDAO.selectEsRequest(sqlSession, coId,pi);
	}
	@Override
	public int EsListCount(Map<String, String> status) {
		return exDAO.EsListCount(sqlSession, status);
	}
	@Override
	public int makingEsListCount(String coId, int status) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Media selectbkImg(int bkNo) {
		return exDAO.selectbkImg(sqlSession,bkNo);
	}
@Override
	public ArrayList<Estimate> selectEstimateAddList(PageInfo pi, Map<String, String> status) {
		return exDAO.selectEstimateAddLsit(sqlSession,pi,status);
	}
}
