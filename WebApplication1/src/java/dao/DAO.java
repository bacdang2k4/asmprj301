/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBconnection.DBUtils;
import dto.FieldDTO;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bacda
 */
public class DAO {

    public List<FieldDTO> getAllField() {
        List<FieldDTO> list = new ArrayList<>();
        String sql = "SELECT FieldID, FieldName, Price, ImageURL, Location FROM FOOTBALL_FIELD";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                FieldDTO dto = new FieldDTO();
                dto.setFieldID(rs.getInt("FieldID"));  // Truy cập bằng tên cột
                dto.setFieldName(rs.getString("FieldName"));
                dto.setPrice(rs.getDouble("Price"));
                dto.setImageURL(rs.getString("ImageURL"));
                dto.setLocation(rs.getString("Location"));

                list.add(dto);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Hiển thị lỗi để dễ debug
        }

        return list;
    }

    public List<FieldDTO> search(String keyword) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<FieldDTO> list = new ArrayList<>();
        String sql = "SELECT FieldID, FieldName, Price, ImageURL, Location FROM FOOTBALL_FIELD WHERE Location LIKE ? ";

        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, "%" + keyword + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                FieldDTO dto = new FieldDTO();
                dto.setFieldID(rs.getInt(1));
                dto.setFieldName(rs.getString(2));
                dto.setPrice(rs.getDouble(3));
                dto.setImageURL(rs.getString(4));
                dto.setLocation(rs.getString(5));

                list.add(dto);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public FieldDTO getDetail(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "select FieldID , FieldName , Description , FieldSize , Location , ImageURL, Amenities , Rating , Price , CreatedAt, UpdatedAt  from FOOTBALL_FIELD where FieldID = ?";

        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new FieldDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(10),
                        rs.getDate(11),
                        rs.getDouble(9),
                        rs.getInt(8),
                        rs.getString(4));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public UserDTO login(String username, String password) {

        UserDTO user = null;
        try {

            Connection con = DBUtils.getConnection();
            String sql = " SELECT Username FROM USERS ";
            sql += " WHERE Username = ?  AND Password = ?";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs != null) {
                if (rs.next()) {

                    user = new UserDTO();
                    user.setUserName(rs.getString("username"));
                }
            }
            con.close();
        } catch (Exception e) {

        }
        return user;
    }

    public Boolean signup(int userId, String userName, String email, String password, String address) {
        Connection conn = null;
        PreparedStatement ps = null;

        String sql = "INSERT INTO USERS VALUES(?,?,?,?,?,?) ";

        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, userName);
            ps.setString(3, "Customer");
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, address);

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
        }
        return false;
    }

    public int getMaxId() {
        int maxId = 0;
        try {
            Connection con = DBUtils.getConnection();
            String sql = "SELECT MAX(UserID) FROM USERS";
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                maxId = rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return maxId;
    }
}
