package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.Category;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.CategoryService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryImp implements CategoryService {
    @Override
    public List<Category> getAll() {
        QDatabase.getConnectionDB();
        List<Category> result = new ArrayList<>();


        String SQL_SELECT = "Select * from category";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String headerLv1 = resultSet.getString("header_lv1");
                String headerLv2 = resultSet.getString("header_lv2");
                String headerLv3 = resultSet.getString("header_lv3");
                int tructhuoc_id = resultSet.getInt("tructhuoc_lp_id");
                Category category = new Category();
                category.setId(id);
                category.setHeader_lv1(headerLv1);
                category.setHeader_lv2(headerLv2);
                category.setHeader_lv3(headerLv3);
                category.setTructhuoc_id(tructhuoc_id);
                result.add(category);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public int create(Category category) {
        String SQL_SELECT = "insert into category(header_lv1,header_lv2,header_lv3,tructhuoc_lp_id) values(?,?,?,?)";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, category.getHeader_lv1());
            preparedStatement.setString(2, category.getHeader_lv2());
            preparedStatement.setString(3, category.getHeader_lv3());
            preparedStatement.setInt(4, category.getTructhuoc_id());
            return preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public int update(Category category) {
        String SQL_SELECT = "update category set header_lv1=?,header_lv2=?,header_lv3=?,tructhuoc_lp_id=? where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, category.getHeader_lv1());
            preparedStatement.setString(2, category.getHeader_lv2());
            preparedStatement.setString(3, category.getHeader_lv3());
            preparedStatement.setInt(4, category.getTructhuoc_id());
            preparedStatement.setInt(5, category.getId());
            return preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public int delete(int category_id) {
        return 0;
    }

    @Override
    public TitleDto getTitleById(int catalog) {
        QDatabase.getConnectionDB();
        String SQL_SELECT = "Select * from category where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, catalog);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String headerLv1 = resultSet.getString("header_lv1");
                String headerLv2 = resultSet.getString("header_lv2");
                String headerLv3 = resultSet.getString("header_lv3");
                TitleDto titleDto = new TitleDto();
                titleDto.setLv1(headerLv1);
                titleDto.setLv2(headerLv2);
                titleDto.setLv3(headerLv3);
                return titleDto;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public Category getTitleByttLpId(int tt_lpId) {
        QDatabase.getConnectionDB();


        String SQL_SELECT = "Select * from category where tructhuoc_lp_id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, tt_lpId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String headerLv1 = resultSet.getString("header_lv1");
                String headerLv2 = resultSet.getString("header_lv2");
                String headerLv3 = resultSet.getString("header_lv3");
                int tructhuoc_id = resultSet.getInt("tructhuoc_lp_id");
                return new Category(id,headerLv1,headerLv2,headerLv3,tructhuoc_id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return null;
    }
}
