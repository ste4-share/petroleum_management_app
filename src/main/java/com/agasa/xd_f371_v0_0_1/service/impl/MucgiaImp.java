package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.Mucgia;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.MucgiaService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MucgiaImp implements MucgiaService {

    @Override
    public List<Mucgia> getMucgiaByIdXangDau(int id_xd, int id_quarter) {
        QDatabase.getConnectionDB();
        List<Mucgia> result = new ArrayList<>();

        String SQL_SELECT = "Select * from mucgia where quarter_id=? and item_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id_quarter);
            preparedStatement.setInt(2, id_xd);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int price = resultSet.getInt("price");
                int amount = resultSet.getInt("amount");
                int quarter_id = resultSet.getInt("quarter_id");
                int item_id = resultSet.getInt("item_id");
                String status = resultSet.getString("status");

                Mucgia mucgia = new Mucgia();
                mucgia.setId(id);
                mucgia.setPrice(price);
                mucgia.setStatus(status);
                mucgia.setAmount(amount);
                mucgia.setQuarter_id(quarter_id);
                mucgia.setItem_id(item_id);
                result.add(mucgia);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<Mucgia> findMucgiaByGia(int id_xd, int id_quarter, int gia) {
        QDatabase.getConnectionDB();
        List<Mucgia> result = new ArrayList<>();

        String SQL_SELECT = "Select * from mucgia where quarter_id=? and item_id=? and price=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id_quarter);
            preparedStatement.setInt(2, id_xd);
            preparedStatement.setInt(3, gia);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int price = resultSet.getInt("price");
                int amount = resultSet.getInt("amount");
                int quarter_id = resultSet.getInt("quarter_id");
                int item_id = resultSet.getInt("item_id");
                String status = resultSet.getString("status");

                Mucgia mucgia = new Mucgia();
                mucgia.setId(id);
                mucgia.setPrice(price);
                mucgia.setStatus(status);
                mucgia.setAmount(amount);
                mucgia.setQuarter_id(quarter_id);
                mucgia.setItem_id(item_id);
                result.add(mucgia);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<Mucgia> findMucgiaBy_xd_quarter_status(int id_xd, int id_quarter, String status1) {
        QDatabase.getConnectionDB();
        List<Mucgia> result = new ArrayList<>();

        String SQL_SELECT = "Select * from mucgia where quarter_id=? and item_id=? and status=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id_quarter);
            preparedStatement.setInt(2, id_xd);
            preparedStatement.setString(3, status1);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int price = resultSet.getInt("price");
                int amount = resultSet.getInt("amount");
                int quarter_id = resultSet.getInt("quarter_id");
                int item_id = resultSet.getInt("item_id");
                String status = resultSet.getString("status");

                Mucgia mucgia = new Mucgia();
                mucgia.setId(id);
                mucgia.setPrice(price);
                mucgia.setStatus(status);
                mucgia.setAmount(amount);
                mucgia.setQuarter_id(quarter_id);
                mucgia.setItem_id(item_id);
                result.add(mucgia);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public Mucgia createNew(Mucgia mucgia) {
        QDatabase.getConnectionDB();
        String sql = "insert into mucgia(price, amount, quarter_id, item_id, status) values(?,?,?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, mucgia.getPrice());
            statement.setInt(2, mucgia.getAmount());
            statement.setInt(3, mucgia.getQuarter_id());
            statement.setInt(4, mucgia.getItem_id());
            statement.setString(5, mucgia.getStatus());
            statement.executeUpdate();
            System.out.println("Record quarter updated.");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return mucgia;
    }

    @Override
    public Mucgia updateMucGia(Mucgia mucgia) {
        QDatabase.getConnectionDB();
        String sql = "update mucgia set amount=? where quarter_id=? and item_id=? and price=?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, mucgia.getAmount());
            statement.setInt(2, mucgia.getQuarter_id());
            statement.setInt(3, mucgia.getItem_id());
            statement.setInt(4, mucgia.getPrice());
            statement.executeUpdate();
            System.out.println("Record tonkho updated.");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return mucgia;
    }

    @Override
    public Mucgia findMucGiaByID(int id1) {
        QDatabase.getConnectionDB();
        Mucgia result = new Mucgia();

        String SQL_SELECT = "Select * from mucgia where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int price = resultSet.getInt("price");
                int amount = resultSet.getInt("amount");
                int quarter_id = resultSet.getInt("quarter_id");
                int item_id = resultSet.getInt("item_id");
                String status = resultSet.getString("status");


                result.setId(id);
                result.setPrice(price);
                result.setStatus(status);
                result.setAmount(amount);
                result.setQuarter_id(quarter_id);
                result.setItem_id(item_id);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }
}
