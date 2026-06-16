/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

/**
 *
 * @author MP2-4
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.Model.SessionBean;

public class SessionDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String insert_sql = "INSERT INTO training_sessions (student_name,branch_location, lesson_type,status ) VALUES (?, ?, ?, ?);";
    private static final String retrieve_sql = "SELECT * FROM training_sessions ORDER BY branch_location ASC;";

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    //insert booking
    public boolean bookSession(SessionBean session) throws SQLException {

        boolean result = false;

        try (Connection connection = getConnection();
                PreparedStatement ps = connection.prepareStatement(insert_sql)) {
            ps.setString(1, session.getStudent_name());
            ps.setString(2, session.getBranch_location());
            ps.setString(3, session.getLesson_type());
            ps.setString(4, session.getStatus());
            ps.executeUpdate();
        }
        return result;
    }

    //retrieve method
   public List<SessionBean> getAllSessions(){

        List<SessionBean> list =
                new ArrayList<>();

        try{

            Connection con = getConnection();
            PreparedStatement ps =
                    con.prepareStatement(retrieve_sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                SessionBean s =
                        new SessionBean();

                s.setSession_id(
                        rs.getInt("session_id"));

                s.setStudent_name(
                        rs.getString("student_name"));

                s.setBranch_location(
                        rs.getString("branch_location"));

                s.setLesson_type(
                        rs.getString("lesson_type"));

                s.setStatus(
                        rs.getString("status"));

                list.add(s);
            }

            con.close();

        } catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
}
   

// baiki balik yang ni nnti
