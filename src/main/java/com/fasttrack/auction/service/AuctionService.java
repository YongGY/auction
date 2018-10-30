package com.fasttrack.auction.service;


import com.fasttrack.auction.bean.Auction;
import com.fasttrack.auction.bean.Item;

import java.util.List;

public interface AuctionService {

    void postAuction(Auction Auction);

    List<Auction> queryAllByEndTime();

    List<Item> getItemsByAuctionId(int auctionId);

    void deleteAuction(int auctionId);
}
