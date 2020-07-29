package ru.job4j.accident.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.job4j.accident.service.AccidentService;

import java.util.Map;

@Controller
public class IndexControl {
    @GetMapping("/")
    public String index(Model model) {
        Map accidents = new AccidentService().getAm();
        model.addAttribute("accidents", accidents);
        return "index";
    }


}
