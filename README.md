# Auction (Fast Track Coding Challenge)

### Background
This coding challenge is based on real work we do everyday as a reverse logistics / auction company. As you’ll see, we’ve attached an excel spreadsheet with four sheets. Each sheet represents a different component of an auction:
  #####  Auction - The auctions that were just created in our warehouses.
  #####  Item - Items that make up the auctions. There are one or many items in each auction
  #####  Image - The images that are related to each item. These can be referred to by a URL. Each item has one or many images.
  #####  Lotter - The lotter (person who processed each item). Each item has one and only one Lotter.

### Assignment
We’d like you to create a series of tables that represent the data in the excel doc. You can change the column names, use additional tables, or whatever else you feel would be appropriate. Please add the data and then build a REST API that allows us to read and write to those tables. The required methods are as follows:
 
Auction:
```
- Post an auction
- Get auctions by end date
- Get items of an auction
- Delete an auction
```
Item:
```
- Get items by Lotter (id)
- Get images of an item
- Create a new item
- Add an item to an auction
```

```bash
 ------- src/main/java/
 -------------com.fasttrack.auction
 -------------|-----------bean               #Bean class
 -------------|-----------controller         #Controller
 -------------|-----------dao                #DAO
 -------------|-----------mapper             #MyBatis mapper
 -------------|-----------service            #Service interface and implement class
 -------------|-----------Application.java   #entry point
 ----------resources
 -------------|-----------mapper             #configuration file of mybatis mapper 
 -------------|-----------application.yml    #configuration file of Application
 -------------|-----------db.sql             #Initial data file
```

#### Deployment
Project can be run in any Java 1.8 compatible IDE.  Download zip file or clone onto local machine, open in IDE and run. 

#### Testing
The project should be tested with JUnit, with limited time, and API testing with Postman .

#### Built With
Spring Boot + MyBaits + MySQL + Manve

#### Method request path
Auction:
```
- Post an auction               /postAuction
- Get auctions by end date      /queryAllByEndTime
- Get items of an auction       /{auctionId}/getItemsByAuctionId
- Delete an auction             /{auctionId}/deleteAuction
```
Item:
```
- Get items by Lotter (id)      /{lotterId}/getItemsByLotterId
- Get images of an item         /{itemId}/getImagesByItemId
- Create a new item             /createItem
- Add an item to an auction     /addItemToAuction
```

#### Development project time
8pm - 11:30pm PST 




