
package Carta;

import Hibernate.HibernateUtil;
import hibernatePersistent.usuario.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CartaDAO {

    public static List<Carta> getTodas(Usuario user) {
        Session session = HibernateUtil.abrirSessaoComBD();
        List<Carta> cartas = session.createQuery("from Carta where destinatario=:user").setString("user", user.getEmail()).list();
        return cartas;
    }

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
        Integer okay = null;
        try {
            tx = session.beginTransaction();

            okay = (Integer) session.save(carta);
            
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
    
    public static Carta getCartaHackeado(Usuario user) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Carta carta = (Carta) session.createQuery("from Carta where remetente=:user").setString("user", user.getEmail()).list().get(0);
        return carta;
    }
    
    //TODO criar método para salvar uma carta por cima da que já existe
    //session.update(carta);
}
