package com.fasttrack.auction.service;

import com.fasttrack.auction.bean.Auction;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.mapper.AuctionMapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@ComponentScan({"com.fasttrack.auction.mapper"})
@Service("auctionService")
public class AuctionImplService implements AuctionService {

    @Resource
    private AuctionMapper auctionMapper;

    @Override
    public int postAuction(Auction auction) {
        return auctionMapper.postAuction(auction);
    }

    @Override
    public List<Auction> queryAllByEndTime() {
        return auctionMapper.queryAllByEndTime();
    }

    @Override
    public List<Item> getItemsByAuctionId(int auctionId) {
        List<Item> items = auctionMapper.getItemsByAuctionId(auctionId);
        return items;
    }

    @Override
    public int deleteAuction(int auctionId) {
        return auctionMapper.deleteAuction(auctionId);
    }

}
