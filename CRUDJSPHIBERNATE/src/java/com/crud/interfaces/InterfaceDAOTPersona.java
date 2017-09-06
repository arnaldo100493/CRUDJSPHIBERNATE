/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crud.interfaces;

import com.crud.hibernate.pojos.Tpersona;
import java.util.List;

/**
 *
 * @author FABAME
 */
public interface InterfaceDAOTPersona {

    public boolean insert(Tpersona tpersona) throws Exception;

    public Tpersona getByIdPersona(Integer idPersona) throws Exception;

    public List<Tpersona> getAll() throws Exception;

    public boolean update(Tpersona tpersona) throws Exception;

    public boolean delete(Tpersona tpersona) throws Exception;

}
