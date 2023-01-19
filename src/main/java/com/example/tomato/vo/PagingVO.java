package com.example.tomato.vo;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;

@Slf4j
@Data
public class PagingVO implements Serializable {

    // 페이지당 게시물수
    public static final int PAGE_SCALE = 10;

    // 화면당 페이지 수
    public static final int BLOCK_SCALE = 5;

    private int curPage;    // 현재 게시물
    private int prevPage;    // 이전 게시물
    private int nextPage;    // 다음 게시물
    private int totPage;    //	전체 게시물
    private int totBlock;    // 전체 페이지 갯수
    private int curBlock;
    private int prevBlock;
    private int nextBlock;

    private int pageBegin;    // db 들고올 실제 게시물 위치 시작
    private int pageEnd;    // db 들고올 실제 게시물 위치 끝

    private int blockBegin;    // 블록의 시작번호
    private int blockEnd;    // 블록의 끝번호

    public void init(int count, int curPage) {
        this.curBlock = 1;
        this.curPage = curPage;
        setTotPage(count);
        setPageRange();
        setTotBlock();
        setBlockRange();
    }

    public void setPageRange() {
        pageBegin = (curPage - 1) * PAGE_SCALE + 1;
        pageEnd = pageBegin + PAGE_SCALE - 1;
    }

    public void setBlockRange() {
        curBlock = (int) Math.ceil((curPage - 1.0) / BLOCK_SCALE) + 1;
        blockBegin = (curBlock - 1) * BLOCK_SCALE + 1;
        blockEnd = blockBegin + BLOCK_SCALE - 1;

        if (blockEnd > totPage) {
            blockEnd = totPage;
        }

        prevPage = (curPage == 1) ? 1 : (curBlock - 1) * BLOCK_SCALE;
        nextPage = curBlock > totBlock ? (curBlock * BLOCK_SCALE)
                : (curBlock * BLOCK_SCALE) + 1;

        if (prevPage <= 0) {
            prevPage = 1;
        }

        if (nextPage >= totPage) {
            nextPage = totPage;
        }
    }

    public void setTotPage(int count) {
        totPage = (int) Math.ceil(count * 1.0 / PAGE_SCALE);

        log.info("-----------------setTotPage----------------");
        log.info("count: " + count);
        log.info("TOT_PAGE:" + totPage);
        log.info("PAGE_SCALE:" + PAGE_SCALE);
        log.info("-----------------setTotPage----------------");
    }

    public void setTotBlock() {
        this.totBlock = (int) Math.ceil((double) totPage / (double) BLOCK_SCALE);
    }
}




