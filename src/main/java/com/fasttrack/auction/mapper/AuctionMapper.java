package com.fasttrack.auction.mapper;

import com.fasttrack.auction.bean.Auction;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.bean.Lotter;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AuctionMapper {

    void postAuction(Auction auction);

    List<Auction> queryAllByEndTime();

    List<Item> getItemsByAuctionId(int auctionId);

    void deleteAuction(int auctionId);
}
