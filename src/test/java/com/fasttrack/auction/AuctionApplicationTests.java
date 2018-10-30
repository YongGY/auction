package com.fasttrack.auction;

import org.hamcrest.Matchers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AuctionApplicationTests {
    //private final static Logger logger = LoggerFactory.getLogger(AuctionApplicationTests.class);


//    @Bean
//    RestTemplate restTemplate() {
//        return new RestTemplate();
//    }
//
//    @Autowired
//    private TestRestTemplate restTemplate;

    @Test
    public void contextLoads() {
//        MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
//        map.add("auctionId", "19");
//        map.add("itemId", 111919191);
//        String result = restTemplate.postForObject("http://127.0.0.1:8080/auction/addItemToAuction", map, String.class);
//        logger.info("RepResult:" + result);
//        assertNotNull(result);
//        assertThat(result, Matchers.containsString("success"));
    }

}
