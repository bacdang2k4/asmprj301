/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBconnection.DBUtils;
import dto.FieldDTO;
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
        String sql = "SELECT FieldID, FieldName, Price, ImageURL, [Location] FROM FOOTBALL_FIELD";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                FieldDTO dto = new FieldDTO();
                dto.setFieldID(rs.getString("FieldID"));  // Truy cập bằng tên cột
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
        String sql = "SELECT FieldID, FieldName, Price, ImageURL, [Location] FROM FOOTBALL_FIELD WHERE Location LIKE ? ";

        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, "%" + keyword + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                FieldDTO dto = new FieldDTO();
                dto.setFieldID(rs.getString(1));
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
}
