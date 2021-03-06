package com.fasttrack.auction.service;


import com.fasttrack.auction.bean.Image;
import com.fasttrack.auction.bean.Item;

import java.util.List;

public interface ItemService {

    List<Item> getItemsByLotterId(int lotterId);

    List<Image> getImagesByItemId(String itemId);

    int createItem(Item item);

    int addItemToAuction(Item item);
}
