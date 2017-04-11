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

    public void deleteCarta(Carta carta) {
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

    public Carta getCarta(int cartaid){

        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        Carta carta = null;
        try {
            tx = session.beginTransaction();

            carta = (Carta) session.createQuery("from Carta where cod_carta = ?").setInteger(0, cartaid).uniqueResult();

            tx.commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return carta;
    }

    public List<Carta> listaCartas(String idUser) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        List cartas = null;
        try {
            tx = session.beginTransaction();

            cartas = session.createQuery("FROM Carta WHERE remetente = :id").setString("id", idUser).list();

            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return cartas;
    }

    public static Carta getCartaHackeado(Usuario user) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Carta carta = (Carta) session.createQuery("from Carta where remetente=:user").setString("user", user.getEmail()).list().get(0);
        return carta;
    }

    //TODO criar método para salvar uma carta por cima da que já existe
    //session.update(carta);
}
