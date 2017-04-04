
package Carta;

import Hibernate.HibernateUtil;
import hibernatePersistent.usuario.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class CartaDAO {
     private static SessionFactory factory;

    public boolean addCarta(Carta carta) throws HibernateException {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        boolean funfou = false;
        String okay = null;
        try {
            tx = session.beginTransaction();

            okay = (String) session.save(carta);
            
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        if (okay != null) {
            funfou = true;
        }
        return funfou;
    }

    public List<Carta> listaCartas() {
        return null;
    }
    
    public static Carta getCarta(Usuario user) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Carta carta = (Carta) session.createQuery("from Carta where remetente=:user").setString("user", user.getEmail()).list().get(0);
        return carta;
    }
    
    //TODO criar método para salvar uma carta por cima da que já existe
    //session.update(carta);
}
