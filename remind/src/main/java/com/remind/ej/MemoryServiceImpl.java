package com.remind.ej;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memoryService")
public class MemoryServiceImpl implements MemoryService {
	
	@Resource(name="memoryDao")
	private MemoryDAO dao;
	
	@Override
	public int create(Map map) throws Exception {
		int result = 0;	
		
		ArrayList list = new ArrayList();
		Map data = new HashMap();
		
		String[] wordlist = ((String) map.get("word")).split(","); // 111, 222, 333
		String[] meanlist = ((String) map.get("mean")).split(","); // 444, 555, 666
		
		for(int i=0; i<wordlist.length; i++) {
			data.put("word", wordlist[i]); 
			data.put("mean", meanlist[i]);
			list.add(data);
		}
		
		result = dao.create(list);
		
		return result;
	}

}
