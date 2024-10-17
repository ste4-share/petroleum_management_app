package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.Tcn;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.TcnService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TcnImp implements TcnService {

    @Override
    public List<Tcn> getAll() {
        QDatabase.getConnectionDB();
        List<Tcn> result = new ArrayList<>();


        String SQL_SELECT = "SELECT * FROM tcn order by concert;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int concert = resultSet.getInt("concert");
                String status = resultSet.getString("status");
                Tcn obj = new Tcn();
                obj.setId(id);
                obj.setName(name);
                obj.setConcert(concert);
                obj.setStatus(status);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Tcn> getAllByName(String norx) {
        QDatabase.getConnectionDB();
        List<Tcn> result = new ArrayList<>();


        String SQL_SELECT = "SELECT * FROM tcn where name like ?;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1,"%"+norx+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int concert = resultSet.getInt("concert");
                String status = resultSet.getString("status");
                Tcn obj = new Tcn();
                obj.setId(id);
                obj.setName(name);
                obj.setConcert(concert);
                obj.setStatus(status);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Tcn findByID(int id) {
        return null;
    }

    @Override
    public List<Tcn> findByName(String sear_name) {
        QDatabase.getConnectionDB();
        List<Tcn> list = new ArrayList<>();

        String SQL_SELECT = "select * from tcn where name=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, sear_name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int concert = resultSet.getInt("concert");
                String status = resultSet.getString("status");
                Tcn obj = new Tcn();
                obj.setId(id);
                obj.setName(name);
                obj.setConcert(concert);
                obj.setStatus(status);

                list.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public Tcn create(Tcn tcn) {
        QDatabase.getConnectionDB();
        String sql = "insert into tcn(name, concert, status) values(?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, tcn.getName());
            statement.setInt(2, tcn.getConcert());
            statement.setString(3, tcn.getStatus());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tcn;
    }

    @Override
    public Tcn update(Tcn tcn) {
        return null;
    }

    @Override
    public void delete(int id) {

    }
}
