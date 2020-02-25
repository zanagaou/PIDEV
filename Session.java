/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import Entity.Client;

/**
 *
 * @author Asus
 */
public final class Session {
    private static Session instance;

    private String userName;
    private Client clientConnecte;

    private Session(String userName, Client clientConnecte) {
        this.userName = userName;
        this.clientConnecte = clientConnecte;
    }

    public static Session getInstace(String userName, Client clientConnecte) {
        if(instance == null) {
            instance = new Session(userName, clientConnecte);
        }
        return instance;
    }

    public String getUserName() {
        return userName;
    }

    public Client getClientConnecte() {
        return clientConnecte;
    }

    public void cleanUserSession() {
        userName = "";// or null
        clientConnecte = new Client();// or null
    }

    @Override
    public String toString() {
        return "UserSession{" +
                "userName='" + userName + '\'' +
                ", privileges=" + clientConnecte +
                '}';
    }
}
