/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ransa.controller;

import com.ransa.domain.Usuario;
import com.ransa.service.AreaRansa;
import java.awt.geom.Area;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author NP375105
 */
@Controller
public class LoginController {

    @RequestMapping("login")
    public ModelAndView getLogin(@ModelAttribute Usuario usuario) {
        return new ModelAndView("login");
    }

    @RequestMapping("acceder")
    public ModelAndView acceder(@ModelAttribute Usuario usuario) {

        boolean indicadorLogin = false;

        indicadorLogin = login(usuario.getUsuario(), usuario.getPassword());
        System.out.println("Pasó login: " + indicadorLogin);
        if (!indicadorLogin) {
            return new ModelAndView("login");
        } else {
            System.out.println("hola");
            return new ModelAndView("home");
        }

    }

    @RequestMapping("pedido")
    public ModelAndView accederPedido() {
        return new ModelAndView("pedido");
    }

    @RequestMapping("recojo")
    public ModelAndView accederRecojo(HttpServletRequest request) {
        /*  HttpSession sesion =  request.getSession();
         sesion.setAttribute("areas", getAreas());*/
        return new ModelAndView("recojo");
    }

    public boolean login(String usuario, String clave) {
        boolean result = false;
        try { // Call Web Service Operation
            com.ransa.service.UsuarioRansaServiceImpl service = new com.ransa.service.UsuarioRansaServiceImpl();
            com.ransa.service.UsuarioRansaServiceImplPortType port = service.getUsuarioRansaServiceImplHttpSoap12Endpoint();
            // TODO initialize WS operation arguments here
            // TODO process result here
            result = port.iniciarSesion(usuario, clave);
            System.out.println("Result = " + result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
            System.err.println("Error" + ex.getMessage());
        }
        return result;
    }
    /*
     public List getAreas() {

     java.util.List<com.ransa.service.AreaRansa> result = null;
     try { // Call Web Service Operation
     com.ransa.service.UsuarioRansaServiceImpl service = new com.ransa.service.UsuarioRansaServiceImpl();
     com.ransa.service.UsuarioRansaServiceImplPortType port = service.getUsuarioRansaServiceImplHttpSoap12Endpoint();
     // TODO initialize WS operation arguments here
     java.lang.Integer idCliente = Integer.valueOf(0);
     // TODO process result here
     result = port.getListaArea(idCliente);

     } catch (Exception ex) {
     System.err.println("Error" + ex.getMessage());
     }
     return result;
     }*/
}
