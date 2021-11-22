package application.controllers; //pacote responsável por fazer a intermediação
import java.util.Optional; //import do pacote java 

//Da linha 5 a 11 estao os imports de bibliotecas e fremeworks
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

//Na linha 14 e 15 é feito o importe de aplicacoes e direcionamento 
import application.models.Livro;
import application.repositories.LivroRepository;


@Controller //inicializando o Controller.
@RequestMapping("/livro")
public class LivroController {
    @Autowired 
    private LivroRepository livrosRepo;
    @RequestMapping("/list")
    public String list(Model model){ // Este metodo é responsavel por pegar na base de dados o que tem la 
        model.addAttribute("livros", livrosRepo.findAll()); //aqui pega a tabela do banco de dados livros por meio do objeto da linha 12 e vai encontrar todos os dados
        return "list.jsp"; // retornar no list
        
    }
    public String listar(){ //criacao de um novo metodo como o nome listar
        return "livro/list.jsp";    // retornar no livro/list.jsp
    }

@RequestMapping("/insert")
public String formInsert(){ 
    return "insert.jsp";    // retornar no insert

}
@RequestMapping(value="/insert",method=RequestMethod.POST)
public String saveInsert(@RequestParam("titulo")String titulo){

    Livro livro=new Livro();
    livro.setTitulo(titulo);
    livrosRepo.save(livro);
    return "redirect:/livro/list"; // retornar no direcionamento livro/list

}
@RequestMapping("/delete/{id}")
public String formDelete(Model model,@PathVariable int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
        return "redirect:/livro/list";  // retornar no direcionamento livro/list
     model.addAttribute("livro",livro.get());
 
    return "/livro/delete.jsp"; // retornar livro/delete
    

}
@RequestMapping(value = "/delete",method=RequestMethod.POST)
public String confirmDelete(@RequestParam("id")int id){
   livrosRepo.deleteById(id);
        return "redirect:/livro/list";  // retornar no direcionamento livro/list
     

}
@RequestMapping("/update/{id}")
public String formUpdate(Model model,@PathVariable int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
        return "redirect:/livro/list";  // retornar no direcionamento livro/list
     model.addAttribute("livro",livro.get());
 
    return "/livro/update.jsp"; // retornar no  livro/update
    

}
@RequestMapping(value = "/update",method=RequestMethod.POST)
public String saveUpdate(@RequestParam("titulo")String titulo,@RequestParam("id")int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
        return "redirect:/livro/list";  // retornar no direcionamento livro/list
     livro.get().setTitulo(titulo);
     livrosRepo.save(livro.get());
 
     return "redirect:/livro/list"; // retornar no direcionamento livro/list
    
     

}
}