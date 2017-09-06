/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crud.dao;

import com.crud.hibernate.hibernateutil.HibernateUtil;
import com.crud.hibernate.pojos.Tpersona;
import com.crud.interfaces.InterfaceDAOTPersona;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author FABAME
 */
public class DAOTPersona implements InterfaceDAOTPersona {

    private Session session;

    public DAOTPersona() {

    }

    @Override
    public boolean insert(Tpersona tpersona) throws Exception {
        boolean valorRetornado;
        this.session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = this.session.beginTransaction();
        this.session.save(tpersona);
        transaction.commit();
        this.session.close();
        valorRetornado = true;
        return valorRetornado;
    }

    @Override
    public Tpersona getByIdPersona(Integer idPersona) throws Exception {
        Tpersona tPersona;
        this.session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = this.session.beginTransaction();
        //tpersona = (Tpersona) this.session.get(Tpersona.class, idPersona);
        String hql = "From Tpersona where idPersona=:idPersona";
        Query query = this.session.createQuery(hql);
        query.setParameter("idPersona", idPersona);
        tPersona = (Tpersona) query.uniqueResult();
        transaction.commit();
        this.session.close();
        return tPersona;
    }

    @Override
    public List<Tpersona> getAll() throws Exception {
        List<Tpersona> listadoTPersonas;
        this.session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = this.session.beginTransaction();
        String hql = "From Tpersona";
        Query query = this.session.createQuery(hql);
        listadoTPersonas = (List<Tpersona>) query.list();
        transaction.commit();
        this.session.close();
        return listadoTPersonas;
    }

    @Override
    public boolean update(Tpersona tpersona) throws Exception {
        boolean valorRetornado;
        this.session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = this.session.beginTransaction();
        this.session.update(tpersona);
        transaction.commit();
        this.session.close();
        valorRetornado = true;
        return valorRetornado;
    }

    @Override
    public boolean delete(Tpersona tpersona) throws Exception {
        boolean valorRetornado;
        this.session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = this.session.beginTransaction();
        this.session.delete(tpersona);
        transaction.commit();
        this.session.close();
        valorRetornado = true;
        return valorRetornado;
    }

}
