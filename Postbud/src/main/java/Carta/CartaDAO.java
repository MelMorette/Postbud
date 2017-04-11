
package Carta;

import Hibernate.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class CartaDAO {
     private static SessionFactory factory;

    /**
     *
     * @param carta
     * @return
     * @throws HibernateException
     */
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
    
    
     public void deleteCarta(Carta carta) throws HibernateException {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
     
     
        try {
            tx = session.beginTransaction();

            session.delete(carta);
            
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        
    }

    public Carta getCarta(int cartaid) throws Exception {
        
        Session session = HibernateUtil.abrirSessaoComBD();
        
       Carta carta =  (Carta) session.get(Carta.class, cartaid);
       
       return carta;
    }
   
   
    public List<Carta> listaCartas() {
    
        return null;
    }

    private class connection {

        public connection() {
        }
    }
}
