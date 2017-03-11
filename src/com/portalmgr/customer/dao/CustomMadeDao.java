package com.portalmgr.customer.dao;


import com.portalmgr.customer.entity.CustomMade;
import com.portalmgr.customer.entity.CustomMadeVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author duwk
 * @create 2017-03-08 8:37
 **/
@Repository
public interface CustomMadeDao {
    int getCustomMadeCnt(CustomMadeVo customMadeVo);

    List<CustomMade> getCustomMadeList(CustomMadeVo customMadeVo);

    CustomMade findCustomMade(CustomMadeVo customMadeVo);

    void updateCustomMade(CustomMade customMade);

    void addCustomMade(CustomMade customMade);

    void del(CustomMadeVo customMadeVo);
}
