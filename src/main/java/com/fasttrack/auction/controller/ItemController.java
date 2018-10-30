package com.fasttrack.auction.controller;


import com.fasttrack.auction.bean.Image;
import com.fasttrack.auction.bean.Item;
import com.fasttrack.auction.service.ItemService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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
    public List<Item> getItemsByLotterId(@PathVariable("lotterId") int lotterId) {
        return itemService.getItemsByLotterId(lotterId);
    }

    /**
     * - Get images of an item
     *
     * @param itemId
     */
    @GetMapping("/{itemId}/getImagesByItemId")
    public List<Image> getImagesByItemId(@PathVariable("itemId") String itemId) {
        return itemService.getImagesByItemId(itemId);
    }

    /**
     * - Create a new item
     *
     * @param item
     */
    @PostMapping("/createItem")
    public void createItem(@RequestBody Item item) {
        itemService.createItem(item);
    }

    /**
     * - Add an item to an auction
     *
     * @param item
     */
    @PostMapping("/addItemToAuction")
    public void addItemToAuction(@RequestBody Item item) {
        itemService.addItemToAuction(item);
    }
}
