package com.fasttrack.auction.mapper;

import com.fasttrack.auction.bean.Image;
import com.fasttrack.auction.bean.Item;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ItemMapper {

    List<Item> getItemsByLotterId(int lotterId);

    List<Image> getImagesByItemId(String itemId);

    int createItem(Item item);

    int addItemToAuction(Item item);
}
