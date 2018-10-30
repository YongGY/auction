package com.fasttrack.auction.service;

import com.fasttrack.auction.bean.Image;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.mapper.ItemMapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@ComponentScan({"com.fasttrack.auction.mapper"})
@Service("itemService")
public class ItemImplService implements ItemService {

    @Resource
    private ItemMapper itemMapper;


    @Override
    public List<Item> getItemsByLotterId(int lotterId) {
        return itemMapper.getItemsByLotterId(lotterId);
    }

    @Override
    public List<Image> getImagesByItemId(String itemId) {
        return itemMapper.getImagesByItemId(itemId);
    }

    @Override
    public int createItem(Item item) {
        return itemMapper.createItem(item);
    }

    @Override
    public int addItemToAuction(Item item) {
        return itemMapper.addItemToAuction(item);
    }
}
