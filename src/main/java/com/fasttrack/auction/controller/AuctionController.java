package com.fasttrack.auction.controller;


import com.fasttrack.auction.bean.Auction;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.service.AuctionService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


/**
 * Auction Controller
 */
@RestController
@ComponentScan({"com.fasttrack.auction.service"})
@MapperScan("com.fasttrack.auction.mapper")
public class AuctionController {

    @Resource
    private AuctionService auctionService;

    /**
     * Post an auction
     *
     * @param auction
     */
    @PostMapping("/postAuction")
    public void postAuction(Auction auction) {
        auctionService.postAuction(auction);
    }

    /**
     * Get auctions by end date
     *
     * @return
     */
    @GetMapping("/queryAllByEndTime")
    public List<Auction> queryAllByEndTime() {
        return auctionService.queryAllByEndTime();
    }

    /**
     * Get items of an auction
     *
     * @param auctionId
     * @return
     */
    @GetMapping("/{auctionId}/getItemsByAuctionId")
    public List<Item> getItemsByAuctionId(@PathVariable("auctionId") int auctionId) {
        return auctionService.getItemsByAuctionId(auctionId);
    }

    /**
     * Delete an auction
     *
     * @param auctionId
     */
    @GetMapping("/{auctionId}/deleteAuction")
    public void deleteAuction(@PathVariable("auctionId") int auctionId) {
        auctionService.deleteAuction(auctionId);
    }


}
