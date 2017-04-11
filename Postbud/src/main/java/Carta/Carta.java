/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Carta;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author aluno
 */
@Entity
@Table (name = "cartas")
public class Carta implements Serializable {
   @Id
   @Column(name = "cod_carta")
   private Long codigo;
   
   @Column(name = "nome")
   private String nome;
   
   @Column(name = "sobrenome")
   private String sobrenome;
   
   @Column(name = "senha")
   private String senha;

    public void setCarta(String parameter) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setId(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
}
