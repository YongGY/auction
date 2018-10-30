package com.fasttrack.auction.controller;


import com.fasttrack.auction.bean.Auction;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.bean.Result;
import com.fasttrack.auction.bean.ResultUtil;
import com.fasttrack.auction.service.AuctionService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
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
    public Result<String> postAuction(@Valid Auction auction, BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return ResultUtil.error(ResultUtil.ERROR_CODE,bindingResult.getFieldError().getDefaultMessage());
        }
        int num = auctionService.postAuction(auction);
        return ResultUtil.success(num + " is affected");
    }

    /**
     * Get auctions by end date
     *
     * @return
     */
    @GetMapping("/queryAllByEndTime")
    public Result<List<Auction>> queryAllByEndTime() {
        return ResultUtil.success(auctionService.queryAllByEndTime());
    }

    /**
     * Get items of an auction
     *
     * @param auctionId
     * @return
     */
    @GetMapping("/{auctionId}/getItemsByAuctionId")
    public Result<List<Item>> getItemsByAuctionId(@PathVariable("auctionId") Integer auctionId) {
        if(auctionId == null){
            return ResultUtil.error(ResultUtil.ERROR_CODE,"auction Id cannot be empty.");
        }
        return ResultUtil.success(auctionService.getItemsByAuctionId(auctionId));
    }

    /**
     * Delete an auction
     *
     * @param auctionId
     */
    @GetMapping("/{auctionId}/deleteAuction")
    public Result<String> deleteAuction(@PathVariable("auctionId") Integer auctionId) {
        if(auctionId == null){
            return ResultUtil.error(ResultUtil.ERROR_CODE,"auction Id cannot be empty.");
        }
        int num = auctionService.deleteAuction(auctionId);
        return ResultUtil.success(num + " is affected");
    }


}
