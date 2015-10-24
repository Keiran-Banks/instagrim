/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import uk.ac.dundee.computing.aec.instagrim.lib.AeSimpleSHA1;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;

/**
 *
 * @author Administrator
 */
public class User {
    Cluster cluster;
    public User(){
        
    }
    
    public boolean RegisterUser(String username, String first_name, String last_name, String Password){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("insert into userprofiles (login, first_name, last_name, password) Values(?,?,?,?)");
       
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username, first_name, last_name, EncodedPassword));
        //We are assuming this always works.  Also a transaction would be good here !
        
        return true;
    }
    
    public boolean IsValidUser(String username, String Password){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select password from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        if (rs.isExhausted()) {
            System.out.println("WRONG PASSWORD/USERNAME");
            return false;
        } else {
            for (Row row : rs) {
               
                String StoredPass = row.getString("password");
                if (StoredPass.compareTo(EncodedPassword) == 0)
                    return true;
            }
            
        }
        return false;
    }
            
    public boolean updateProfileDescription(String username, String profileDescription)
    {
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("update userprofiles set profiledescription=? where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute(
            boundStatement.bind(
                profileDescription, username));
    return true; 
    }
    
    
    public String getFirstName(String username)
        {
            
            String NoResult = "No User Data Available";
            String firstName = "";
            
            Session session = cluster.connect("instagrim");
            PreparedStatement ps = session.prepare("select * from userprofiles where login =?");
            ResultSet rs = null;
            BoundStatement boundStatement = new BoundStatement(ps);
            rs = session.execute(
                boundStatement.bind(
                        username)
            );
            
            if (rs.isExhausted()) {
                System.out.println("No Profile Available");
                return NoResult;
            } else {
                for (Row row : rs) {
                    firstName = row.getString("first_name");
                }
                
                return firstName;
                
            }
        }
            
    
    public String getLastName(String username)
    {
        String NoResult = "No User Data Available";
        
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select * from userprofile where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        
        rs = session.execute(
            boundStatement.bind(
                username));
        
        if(rs.isExhausted()) {
            System.out.println("No Profile Available");
        } else {
            for (Row row : rs) {
                String lastName = row.getString("last_name");
                return lastName;
            }
        }
        return NoResult;
    }
    
    public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    
}    
            
            
            
            
            
            
        
            
            

   
        
    
     


