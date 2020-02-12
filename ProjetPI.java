/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetpi;

import config.ConfigBD;
import Entity.*;
import Service.*;
import java.util.Calendar;
import java.util.Date;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;


/**
 *
 * @author Asus
 */
public class ProjetPI {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ConfigBD connexion = ConfigBD.getInstance();
        
       Client c1 = new Client("samy","bejaoui",1231,"menzah 1","hello",0,"hh@hh");
         Client c2 = new Client("khalil","bejaoui",1231,"menzah 1","hello",0,"hh@hh");
        ClientService cs = new ClientService();
        
        cs.ajouterClient(c1);
        cs.ajouterClient(c2);
        System.out.println(cs.getListClient());
        
        c1.setAdresse("el manar");
        c1.setEtat_compte(1);
        c1.setMdp("bbb");
        
        cs.modifierClient(c1);
        cs.supprimerClient(c1);
        System.out.println(cs.getListClient());
        
        Date d = new Date();
        Calendar c = Calendar.getInstance();
        c.set(Calendar.MONTH, 11); 
         c.set(Calendar.DATE, 11); 
          c.set(Calendar.YEAR, 11); 
          d = c.getTime();
          
           Vehicule v1 = new Vehicule("126 tunis 2030",1111,"Ford","Taxi","bon");
        VehiculeService vService = new VehiculeService();
        
        
        vService.ajouterVehicule(v1);
        System.out.println(vService.getListVehicule());
        v1.setEtat("mal");
        vService.modifierVehicule(v1);
         System.out.println(vService.getListVehicule());
         
        Chauffeur cf1 = new Chauffeur(1133,"aziz","barhoumi","hahaha",55231,"homme",d,133.2f,4.3f,"taxi",4455,28);
        ChauffeurService cfservice = new ChauffeurService();
        
        cfservice.ajouterChauffeur(cf1);
        System.out.println(cfservice.getListChauffeur());
        cf1.setEtat_compte(1);
        cf1.setPrenom("alaa");
        cfservice.modifierChauffeur(cf1);
         System.out.println(cfservice.getListChauffeur());
        //cfservice.supprimerChauffeur(cf1);
        
       
         
         Date d2 = new Date();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(Calendar.MONTH, 11); 
         calendar2.set(Calendar.DATE, 11); 
          calendar2.set(Calendar.YEAR, 11); 
          d2 = c.getTime();
         Postulation post = new Postulation(d2,4512,11223,"homme",44);
         
         PostulationService postService = new PostulationService();
         
         postService.ajouterPostulation(post);
         
         System.out.println(postService.getListPostulation());
         
         post.setEtat(1);
         postService.modifierPostulation(post);
         System.out.println(postService.getListPostulation());
         
       //  postService.supprimerPostulation(post);
       
       Date d3 = new Date();
        Calendar calendar3 = Calendar.getInstance();
        calendar3.set(Calendar.MONTH, 11); 
         calendar3.set(Calendar.DATE, 11); 
          calendar3.set(Calendar.YEAR, 11); 
          d3 = c.getTime();
          
       Offre o1 = new Offre(4,"tunis","sousse",d3,4.2f,44);
       
       OffreService offService = new OffreService();
       
       offService.ajouterOffre(o1);
       System.out.println(offService.getListOffre());
       
       o1.setDepart("kasserine");
       offService.modifierOffre(o1);
       System.out.println(offService.getListOffre());
        Date d4 = new Date();
        Calendar calendar4 = Calendar.getInstance();
        calendar4.set(Calendar.MONTH, 11); 
         calendar4.set(Calendar.DATE, 11); 
          calendar4.set(Calendar.YEAR, 11); 
          d4 = c.getTime();
       Reservation r1 = new Reservation(22.3f,"tunis","ariana",d4,6,44);
       ReservationService resService = new ReservationService();
       
       resService.ajouterReservation(r1);
       System.out.println(resService.getListReservation());
       
       r1.setArrivee("monastir");
       resService.modifierReservation(r1);
       System.out.println(resService.getListReservation());
       
       AdminRH ar = new AdminRH("barhoumi","hhh","barhoumi@gmail.tn");
       AdminRHService arService = new AdminRHService();
       arService.ajouterAdminRH(ar);
       System.out.println(arService.getListAdminRH());
       
       ar.setMdp("wejh el za3ka");
       arService.modifierAdminRH(ar);
       System.out.println(arService.getListAdminRH());
       
       Admin a = new Admin("barhoumi","hhh","barhoumi@gmail.tn");
       AdminService aService = new AdminService();
       aService.ajouterAdmin(a);
       System.out.println(aService.getListAdmin());
       
       a.setMdp("jjjkkkk");
       aService.modifierAdmin(a);
       System.out.println(aService.getListAdmin());
       
          
       Formation f = new Formation(d4,d4,"formation","ariana");
       FormationService fService = new FormationService();
       
       fService.ajouterFormation(f);
       System.out.println(fService.getListFormation());
       
       f.setLieu("tunis");
       fService.modiferFormation(f);
       System.out.println(fService.getListFormation());
       
       Reclamation rec = new Reclamation("ooo",d4,"chauffeur",44,6);
       
       ReclamationService recService = new ReclamationService();
       
       recService.ajouterReclamation(rec);
       System.out.println(recService.getListReclamation());
       
       rec.setMessage("chauffeurppp");
       
       recService.modifierReclamation(rec);
       System.out.println(recService.getListReclamation());
       
    }
    
}
