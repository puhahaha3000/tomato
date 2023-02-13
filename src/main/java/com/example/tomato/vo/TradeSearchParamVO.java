package com.example.tomato.vo;

import lombok.Data;

@Data
public class TradeSearchParamVO {
    private int startNo;
    private int endNo;
    private String search;
    private int itemCategory;
}
