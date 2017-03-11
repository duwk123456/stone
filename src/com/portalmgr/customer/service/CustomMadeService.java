package com.portalmgr.customer.service;


import com.portalmgr.customer.dao.CustomMadeDao;
import com.portalmgr.customer.entity.CustomMade;
import com.portalmgr.customer.entity.CustomMadeVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-07 15:06
 **/
@Service
public class CustomMadeService {

    @Resource
    private CustomMadeDao customMadeDao;

    public int getCustomMadeCnt(CustomMadeVo customMadeVo) {
        return customMadeDao.getCustomMadeCnt(customMadeVo);
    }

    public List<CustomMade> getCustomMadeList(CustomMadeVo customMadeVo) {
        return customMadeDao.getCustomMadeList(customMadeVo);
    }

    public void updateCustomMade(CustomMade customMade) {
         customMadeDao.updateCustomMade(customMade);
    }

    public CustomMade findCustomMade(CustomMadeVo customMadeVo) {
        return customMadeDao.findCustomMade(customMadeVo);
    }

    public void addCustomMade(CustomMade customMade){
         customMadeDao.addCustomMade(customMade);
    }

    public void del(CustomMadeVo customMadeVo) {
        customMadeDao.del(customMadeVo);

    }
}
