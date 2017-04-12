package hibernatePersistent.usuario;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table (name = "postgres.postbud.usuario")
public class Usuario implements Serializable{
   
   @Id
   @Column(name = "email")
   private String email;
   
   @Column(name = "nome")
   private String nome;
   
   @Column(name = "sobrenome")
   private String sobrenome;
   
   @Column(name = "senha")
   private String senha;
   
   @Column(name = "foto_do_perfil")
   private String profilePic;
   
/* Getters and Setters */ 
 
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

}