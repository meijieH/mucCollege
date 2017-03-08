package com.mucCollege.service;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.BlockDao;
import com.mucCollege.dao.TestDao;
import com.mucCollege.dao.TestpaperDao;
import com.mucCollege.dao.TestqueDao;
import com.mucCollege.model.Block;
import com.mucCollege.model.Test;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;

@Service
@Transactional
public class TeatestService {
	@Resource TestDao testDao;
	@Resource TestpaperDao testpaperDao;
	@Resource BlockDao blockDao;
	@Resource TestqueDao testqueDao;
	public List<Test> testlist(Integer id) throws Exception{
		return testDao.queryTestByTeacourseId(id);
	}
	
	//有问题
	public Testpaper getTestpaperById(Integer id) throws Exception{
		Testpaper testpaper=testpaperDao.getTestpaperById(id);
		HashSet<Block> blocks=new HashSet<Block>(blockDao.queryBlockByTestpaperid(id));
		/*Iterator<Block> blocksiterable=blocks.iterator();
		while(blocksiterable.hasNext()){
			Block block=blocksiterable.next();
			HashSet<Group> groups=new HashSet<Group>(groupDao.queryGroupByBlockid(block.getBlockid()));
			Iterator<Group> groupsiterable=groups.iterator();
			while(groupsiterable.hasNext()){
				Group group=groupsiterable.next();
				HashSet<Testque> testques=new HashSet<Testque>(testqueDao.queryTestqueByGroupid(group.getGroupid()));
				group.setTestques(testques);
			}
			block.setGroups(groups);
		}*/
		testpaper.setBlocks(blocks);
		return testpaper;
	}
}