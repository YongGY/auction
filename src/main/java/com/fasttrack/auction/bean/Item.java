package com.fasttrack.auction.bean;

import java.util.List;

/**
 * @author William
 */
public class Item {

    private String itemId;
    private String itemBrand;
    private String itemDesc;
    private Double MSRP;
    private String model;
    private int loadNumber;
    private int lotterId;
    private int auctionId;

    private String lotterName;

    private List<Image> listImage;


    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemBrand() {
        return itemBrand;
    }

    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public Double getMSRP() {
        return MSRP;
    }

    public void setMSRP(Double mSRP) {
        MSRP = mSRP;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getLoadNumber() {
        return loadNumber;
    }

    public void setLoadNumber(int loadNumber) {
        this.loadNumber = loadNumber;
    }

    public int getLotterId() {
        return lotterId;
    }

    public void setLotterId(int lotterId) {
        this.lotterId = lotterId;
    }

    public int getAuctionId() {
        return auctionId;
    }

    public void setAuctionId(int auctionId) {
        this.auctionId = auctionId;
    }

    public String getLotterName() {
        return lotterName;
    }

    public void setLotterName(String lotterName) {
        this.lotterName = lotterName;
    }

    public List<Image> getListImage() {
        return listImage;
    }

    public void setListImage(List<Image> listImage) {
        this.listImage = listImage;
    }

}
