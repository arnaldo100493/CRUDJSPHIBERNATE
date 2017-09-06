/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crud.ejb;

import com.crud.dao.DAOTPersona;
import com.crud.hibernate.pojos.Tpersona;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;

/**
 *
 * @author FABAME
 */
@Stateless
public class EJBTPersona {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private Tpersona tPersona;
    private List<Tpersona> listadoTPersonas;
    private final DAOTPersona daoTPersona;

    public EJBTPersona() {
        this.tPersona = new Tpersona();
        this.listadoTPersonas = new ArrayList<>();
        this.daoTPersona = new DAOTPersona();
    }
    
    public boolean insert() {
        boolean valorRetornado = false;
        try {
            this.tPersona.setEstado(true);
            valorRetornado = this.daoTPersona.insert(this.tPersona);
        } catch (Exception ex) {
            valorRetornado = false;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            return valorRetornado;
        }
    }

    public boolean getByIdPersona() {
        boolean valorRetornado = false;
        try {
            this.tPersona = this.daoTPersona.getByIdPersona(this.tPersona.getIdPersona());
            valorRetornado = true;
        } catch (Exception ex) {
            valorRetornado = false;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            return valorRetornado;
        }
    }

    public boolean getAll() {
        boolean valorRetornado = false;
        try {
            this.listadoTPersonas = this.daoTPersona.getAll();
            valorRetornado = true;
        } catch (Exception ex) {
            valorRetornado = false;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            return valorRetornado;
        }
    }

    public boolean update() {
        boolean valorRetornado = false;
        try {
            this.tPersona.setEstado(true);
            valorRetornado = this.daoTPersona.update(this.tPersona);
        } catch (Exception ex) {
            valorRetornado = false;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            return valorRetornado;
        }
    }

    public boolean delete() {
        boolean valorRetornado = false;
        try {
            this.tPersona.setEstado(true);
            valorRetornado = this.daoTPersona.delete(this.tPersona);
        } catch (Exception ex) {
            valorRetornado = false;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            return valorRetornado;
        }
    }

    public Tpersona getTPersona() {
        return tPersona;
    }

    public void setTPersona(Tpersona tPersona) {
        this.tPersona = tPersona;
    }

    public List<Tpersona> getListadoTPersonas() {
        return listadoTPersonas;
    }

    public void setListadoTPersonas(List<Tpersona> listadoTPersonas) {
        this.listadoTPersonas = listadoTPersonas;
    }
    
}

