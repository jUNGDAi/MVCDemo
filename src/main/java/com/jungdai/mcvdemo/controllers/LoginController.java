/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jungdai.mvcdemo.controllers;

import com.jungdai.mvcdemo.models.Authenticator;
import com.jungdai.mvcdemo.models.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wien
 */
public class LoginController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    public LoginController(){
        super();
    }
    
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        RequestDispatcher rd = null;
        
        Authenticator auth = new Authenticator();
        String result = auth.authenticate(username, password);
        if (result.equals("success")) {
            rd = request.getRequestDispatcher("/success.jsp");
            User user = new User(username, password);
            request.setAttribute("user", user);
        }else {
            rd = request.getRequestDispatcher("/error.jsp");
        }
        
        rd.forward(request, response);
    }
}
