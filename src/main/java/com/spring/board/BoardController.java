package com.spring.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

    @Autowired
    BoardServiceImpl boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String boardlist(Model model) {
        model.addAttribute("list", boardService.getBoardList());
        return "list";
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/addok",method = RequestMethod.POST)
    public String addPostOK(BoardVO vo){
        System.out.println("data: " + vo.getName());
        int i = boardService.insertBoard(vo);

        if(i==0)
            System.out.println("data add fail");
        else
            System.out.println("data add success");
        return "redirect:list";
    }

    @RequestMapping(value = "/editform/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id,Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO",boardVO);
        return "editform";
    }

    @RequestMapping(value = "/editok",method = RequestMethod.POST)
    public String editPostOK(BoardVO vo){
        int i = boardService.updateBoard(vo);
        if(i == 0)
            System.out.println("data edit fail");
        else
            System.out.println("data edit success");
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{id}",method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id){
        int i = boardService.deleteBoard(id);
        if(i==0)
            System.out.println("data delete fail");
        else
            System.out.println("data delete success");
        return "redirect:../list";
    }
}