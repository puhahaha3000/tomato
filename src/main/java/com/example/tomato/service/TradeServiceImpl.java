package com.example.tomato.service;

import com.example.tomato.mapper.BoardMapper;
import com.example.tomato.mapper.TradeMapper;
import com.example.tomato.vo.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Slf4j
@Service
@Transactional
public class TradeServiceImpl implements TradeService {

    private final TradeMapper tradeMapper;
    private final BoardMapper boardMapper;

    public TradeServiceImpl(TradeMapper tradeMapper, BoardMapper boardMapper) {

        this.tradeMapper = tradeMapper;
        this.boardMapper = boardMapper;
    }

    @Override
    public List<TradeVO> myTrade(String memberId) {

        // TODO: trade my list

        return null;
    }

    @Override
    public List<ItemCategoryVO> itemList() {

        log.info("itemList() ..");

        return tradeMapper.getItemList();
    }

    @Override
    public boolean writeTrade(TradeVO tradeVO, MultipartFile file) throws Exception {

        log.info("insertTrade() ..");

        List<BoardVO> boardVO = tradeVO.getBoardVOList();
        log.info(boardVO.get(0).toString());
        log.info(boardVO.get(0).getNo() + "num");

        int boardResult = boardMapper.insert(boardVO.get(0));
        int tradeResult = tradeMapper.insertTradeBoard(tradeVO);

        /* 우리의 프로젝트경로를 담아주게 된다 - 저장할 경로를 지정 */
        String projectPath = System.getProperty("user.dir") + "/src/main/resources/static/files";

        /* 식별자 . 랜덤으로 이름 만들어줌 */
        UUID uuid = UUID.randomUUID();

        /* 랜덤식별자_원래파일이름 = 저장될 파일이름 지정 */
        String fileName = uuid + "_" + file.getOriginalFilename();

        /* 빈 껍데기 생성 */
        /* File 을 생성할건데, 이름은 "name" 으로할거고, projectPath 라는 경로에 담긴다는 뜻 */
        File saveFile = new File(projectPath, fileName);
        file.transferTo(saveFile);

        TestImageVO testImageVO = new TestImageVO();
        /* 디비에 파일 넣기 */
        testImageVO.setFilename(fileName);
        /* 저장되는 경로 */
        testImageVO.setFilepath("/files/" + fileName); /* 저장된파일의이름,저장된파일의경로 */

        /* 파일 저장 */
        int imageResult = tradeMapper.insertTradeImage(testImageVO);

        return boardResult == 1 & tradeResult == 1 & imageResult == 1;
    }

    @Override
    public TradeVO read(int no) {

        log.info("read() ..");

        return tradeMapper.getBoard(no);
    }

    @Override
    public int getTotal() {

        log.info("getTotal() ..");

        return boardMapper.getTotalCount();
    }

    @Override
    public List<TradeVO> getList(PagingVO page) {

        log.info("getList(PagingVO page) ..");

        return tradeMapper.getList(page);
    }

    @Override
    public boolean modify(TradeVO tradeVO) {

        log.info("Trade : update() ..");

        int boardResult =  boardMapper.updateBoard(tradeVO.getBoardVOList().get(0));
        int tradeResult = tradeMapper.updateTrade(tradeVO);

        return boardResult == 1 & tradeResult == 1;
    }

    @Override
    public List<TradeStatusVO> statusList() {

        log.info("get statusList() ..");

        return tradeMapper.getStatusList();
    }

    @Override
    public boolean remove(int boardNo) {

        log.info("Trade : delete() ..");

        int tradeResult = tradeMapper.delete(boardNo);

        return tradeResult == 1;
    }

}
