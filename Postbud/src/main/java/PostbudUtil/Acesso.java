package PostbudUtil;

import Hibernate.HibernateUtil;
import hibernatePersistent.usuario.Usuario;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Session;

public class Acesso {

    public Usuario login(String login, String senha) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Usuario user = null;
        try {
            user = (Usuario) session
                    .createQuery("from Usuario where email= :email and senha= :senha")
                    .setString("email", login).setString("senha", senha).uniqueResult();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return user;
    }
}
