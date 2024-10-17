package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.Mucgia;
import com.agasa.xd_f371_v0_0_1.entity.NguonNxTcn;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.NguonNx_tcnService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NguonNx_tcnImp implements NguonNx_tcnService {
    @Override
    public List<NguonNxTcn> getAll() {
        return List.of();
    }

    @Override
    public NguonNxTcn createNew(NguonNxTcn nguonNxTcn) {
        QDatabase.getConnectionDB();
        String sql = "insert into nguonnx_tcn(tcn_id, nguonnx_id, loaiphieu_id) values(?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, nguonNxTcn.getTcn_id());
            statement.setInt(2, nguonNxTcn.getNguonnx_id());
            statement.setInt(3, nguonNxTcn.getLoaiphieu_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return nguonNxTcn;
    }

    @Override
    public NguonNxTcn update(NguonNxTcn nguonNxTcn) {
        return null;
    }

    @Override
    public List<NguonNxTcn> findByNguonnxIdAndTcn_id(int nguonnx_id, int tcn_id) {
        QDatabase.getConnectionDB();
        List<NguonNxTcn> result = new ArrayList<>();

        String SQL_SELECT = "select * from nguonnx_tcn where tcn_id=? and nguonnx_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, tcn_id);
            preparedStatement.setInt(2, nguonnx_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int tcnId = resultSet.getInt("tcn_id");
                int nguonnxId = resultSet.getInt("nguonnx_id");

                NguonNxTcn nguonNxTcn = new NguonNxTcn();
                nguonNxTcn.setId(id);
                nguonNxTcn.setTcn_id(tcnId);
                nguonNxTcn.setNguonnx_id(nguonnxId);
                result.add(nguonNxTcn);
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
    public List<NguonNxTcn> findByNnxTcn_(int nguonnx_id, int loaiphieu_id, int tcn_id) {
        QDatabase.getConnectionDB();
        List<NguonNxTcn> result = new ArrayList<>();

        String SQL_SELECT = "select * from nguonnx_tcn where loaiphieu_id=? and nguonnx_id=? and tcn_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, loaiphieu_id);
            preparedStatement.setInt(2, nguonnx_id);
            preparedStatement.setInt(3, tcn_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int tcnId = resultSet.getInt("tcn_id");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                int loaiphieuId = resultSet.getInt("loaiphieu_id");

                NguonNxTcn nguonNxTcn = new NguonNxTcn();
                nguonNxTcn.setId(id);
                nguonNxTcn.setTcn_id(tcnId);
                nguonNxTcn.setNguonnx_id(nguonnxId);
                nguonNxTcn.setLoaiphieu_id(loaiphieuId);
                result.add(nguonNxTcn);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public NguonNxTcn delete(NguonNxTcn nguonNxTcn) {
        return null;
    }
}
