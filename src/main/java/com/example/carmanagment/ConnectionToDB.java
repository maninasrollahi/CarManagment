package com.example.carmanagment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ConnectionToDB {
    public static Connection Connection(){
        Connection con=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mani", "123");
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return con;
    }

    public static ArrayList ShowAll(){
        ArrayList<Cars> arr = arr = new ArrayList<>();
        try {
            PreparedStatement ps = Connection().prepareStatement("select *from cars");
            ResultSet rs = ps.executeQuery();
            int carid,carmry,price;
            String carname;
            while(rs.next()){
                carid = rs.getInt(1);
                carname = rs.getString(2);
                carmry = rs.getInt(3);
                price = rs.getInt(4);
                arr.add(new Cars(carid,carname,carmry,price));
            }
            Connection().close();
        }catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return arr;
    }

    public static ArrayList ShowByID(int id){
        ArrayList<Cars> arr = new ArrayList<>();
        int carid,carmry,price;
        String carname;
        try {
            PreparedStatement ps = Connection().prepareStatement("select *from cars where carid = ?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                carid = rs.getInt(1);
                carname = rs.getString(2);
                carmry = rs.getInt(3);
                price = rs.getInt(4);
                arr.add(new Cars(carid,carname,carmry,price));
            }
            Connection().close();
        }catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return arr;
    }

    public static Integer Add(int id,String name,int mry,int price){
        int a=0;
        try {
            PreparedStatement ps = Connection().prepareStatement("insert into cars values (?,?,?,?)");
            ps.setInt(1,id);
            ps.setString(2,name);
            ps.setInt(3,mry);
            ps.setInt(4,price);
            a = ps.executeUpdate();
            Connection().close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return a;
    }

    public static Integer Delete(int id){
        int a = 0;
        try {
            PreparedStatement ps = Connection().prepareStatement("delete from cars where carid = ?");
            ps.setInt(1,id);
            a = ps.executeUpdate();
            Connection().close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return a;
    }

    public static Integer Update(int id,String name,int mry,int price){
        int a = 0;
        try {
            PreparedStatement ps = Connection().prepareStatement("update cars set carname=?,carmry=?,price=? where carid=?");
            ps.setInt(4,id);
            ps.setString(1,name);
            ps.setInt(2,mry);
            ps.setInt(3,price);
            a = ps.executeUpdate();
            Connection().close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return a;
    }
}
