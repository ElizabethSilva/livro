package application.contollers;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Livro")
public class LivroController {
@Autowired
@RequestMapping("/list")

public String list(Model model){
    model.addAttribute("livros");
    return "list.jsp";
}

}
