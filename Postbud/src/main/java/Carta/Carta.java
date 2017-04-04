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
@Table (name = "postbud.cartas")
public class Carta implements Serializable {
   @Id
   @Column(name = "cod_carta")
   private Long codigo;
   
   @Column(name = "destinatario")
   private Long destinatario;
   
   @Column(name = "remetente")
   private String remetente;
   
   @Column(name = "corpo")
   private String corpo;
   
   @Column(name = "titulo")
   private String titulo;

    /**
     * @return the codigo
     */
    public Long getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(Long codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the destinatario
     */
    public Long getDestinatario() {
        return destinatario;
    }

    /**
     * @param destinatario the destinatario to set
     */
    public void setDestinatario(Long destinatario) {
        this.destinatario = destinatario;
    }

    /**
     * @return the remetente
     */
    public String getRemetente() {
        return remetente;
    }

    /**
     * @param remetente the remetente to set
     */
    public void setRemetente(String remetente) {
        this.remetente = remetente;
    }

    /**
     * @return the corpo
     */
    public String getCorpo() {
        return corpo;
    }

    /**
     * @param corpo the corpo to set
     */
    public void setCorpo(String corpo) {
        this.corpo = corpo;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
   
}
