/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jungdai.mvcdemo.models;

/**
 *
 * @author wien
 */
public class Authenticator {
    public String authenticate (String username, String password) {
        if ( password.equalsIgnoreCase("1234") && username.equals("jirawat") ) {
            return "success";
        } else {
            return "failure";
        }
    }
}
