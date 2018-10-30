package com.fasttrack.auction.controller;


import com.fasttrack.auction.bean.Image;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.bean.Result;
import com.fasttrack.auction.bean.ResultUtil;
import com.fasttrack.auction.service.ItemService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * Item Controller
 */
@RestController
@ComponentScan({"com.fasttrack.auction.service"})
@MapperScan("com.fasttrack.auction.mapper")
public class ItemController {

    @Resource
    private ItemService itemService;

    /**
     * - Get items by Lotter (id)
     *
     * @param lotterId
     */
    @GetMapping("/{lotterId}/getItemsByLotterId")
    public Result<Item> getItemsByLotterId(@PathVariable("lotterId") Integer lotterId) {
        if (lotterId == null) {
            return ResultUtil.error(ResultUtil.ERROR_CODE, "lotter Id cannot be empty.");
        }
        return ResultUtil.success(itemService.getItemsByLotterId(lotterId));
    }

    /**
     * - Get images of an item
     *
     * @param itemId
     */
    @GetMapping("/{itemId}/getImagesByItemId")
    public Result<List<Image>> getImagesByItemId(@PathVariable("itemId") String itemId) {
        if (itemId == null || "".equals(itemId)) {
            return ResultUtil.error(ResultUtil.ERROR_CODE, "itemId Id cannot be empty.");
        }
        return ResultUtil.success(itemService.getImagesByItemId(itemId));
    }

    /**
     * - Create a new item
     *
     * @param item
     */
    @PostMapping("/createItem")
    public Result<String> createItem(@RequestBody @Valid Item item) {
        int num = itemService.createItem(item);
        return ResultUtil.success(num + " is affected");

    }

    /**
     * - Add an item to an auction
     *
     * @param item
     */
    @PostMapping("/addItemToAuction")
    public Result<String> addItemToAuction(@RequestBody Item item) {
        if (item == null) {
            return ResultUtil.error(ResultUtil.ERROR_CODE, "Item cannot be empty.");
        }
        if (item.getItemId() == null) {
            return ResultUtil.error(ResultUtil.ERROR_CODE, "Item Id cannot be empty.");
        }
        if (item.getAuctionId() == null) {
            return ResultUtil.error(ResultUtil.ERROR_CODE, "Auction Id cannot be empty.");
        }
        int num = itemService.addItemToAuction(item);
        return ResultUtil.success(num + " is affected");

    }
}
