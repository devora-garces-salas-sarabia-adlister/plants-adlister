package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public User findByEmail(String email) {
        String query = "SELECT * FROM users WHERE email = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, email);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by email", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

    public void updateUserProfile(Long userId, String username, String hash, String email){
        try{
            String sql = "UPDATE users SET username = ?, password = ?, email = ? WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, username);
            stmt.setString(2, hash);
            stmt.setString(3, email);
            stmt.setLong(4, userId);

            stmt.execute();
        }catch (SQLException e){
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public void updateUserProfile(Long userId, String username, String email){
        try{
            String sql = "UPDATE users SET username = ?, email = ? WHERE id = ?";
            PreparedStatement stmt1 = connection.prepareStatement(sql);


            stmt1.setString(1, username);
            stmt1.setString(2, email);
            stmt1.setLong(3, userId);

            stmt1.execute();
        }catch (SQLException e){
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }



    public void deleteUserAcc(String username) {
        try {
            String sql = "DELETE FROM users WHERE username = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, username);
            System.out.println(username);
            stmt.execute();


        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

}
