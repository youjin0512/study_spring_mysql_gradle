package com.example.co_templates.restapis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.co_templates.services.BoardService;

@RestController
public class BoardRestController {

    @Autowired 
    BoardService BoardService;

    @GetMapping("/r/board/List")
    public void callBoardList(HashMap<String,Object> datMap) {
        BoardService.list(datMap);
        return;
    }

    @GetMapping("/r/board/Insert")
    public void callBoardInsert(HashMap datMap) {
        BoardService.insert(datMap);
        return;
    }

    @GetMapping("/r/board/Update")
    public void callBoardUpdate(HashMap datMap) {
        BoardService.update(datMap);
        return;
    }

    @GetMapping("/r/board/Delete")
    public void callBoardDelete(HashMap datMap) {
        BoardService.delete(datMap);
        return;
    }
}