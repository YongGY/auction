package com.fasttrack.auction.bean;

import javax.validation.constraints.NotBlank;

/**
 * @author William
 */
public class Auction {

    private int id;
    @NotBlank(message = "title cannot Empty")
    private String title;

    @NotBlank(message = "startDateTime cannot Empty")
    private String startDateTime;

    @NotBlank(message = "endDateTime cannot Empty")
    private String endDateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStartDateTime() {
        return startDateTime;
    }

    public void setStartDateTime(String startDateTime) {
        this.startDateTime = startDateTime;
    }

    public String getEndDateTime() {
        return endDateTime;
    }

    public void setEndDateTime(String endDateTime) {
        this.endDateTime = endDateTime;
    }

}
