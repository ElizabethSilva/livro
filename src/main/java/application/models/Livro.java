package application.models;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="livros")
public class Livro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; //Variavel id tipo inteiro 
    private String titulo; //Variavel titulo tipo string 

    public int getId() { //O GET recebe as informacoes 
        return id; //retorna o id
    }
    public void setId(int id) { 
        this.id = id;
    }
    public String getTitulo() {
        return titulo; //retorna o titulo
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }


    
}