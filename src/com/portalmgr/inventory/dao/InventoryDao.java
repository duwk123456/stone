package com.portalmgr.inventory.dao;

import com.portalmgr.inventory.entity.Inventory;
import com.portalmgr.inventory.entity.InventoryVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 15:21
 **/
@Repository
public interface InventoryDao {
    public List<Inventory> getInventoryList(InventoryVo inventroyVo);

    int getInventoryCount(InventoryVo inventroyVo);

    Inventory findInventory(InventoryVo inventroyVo);

    void updateInventory(@Param("beans")List<Inventory> inventroy);
}
