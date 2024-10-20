package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.NguonNxTrucThuocDTO;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx_tructhuoc;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.NguonNx_tructhuocService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NguonNx_tructhuocImp implements NguonNx_tructhuocService {
    @Override
    public List<NguonNx_tructhuoc> getAll() {
        return List.of();
    }

    @Override
    public List<NguonNx_tructhuoc> findByNguonnxId_tructhuocId(int nguonnx_id, int tructhuoc_id) {
        QDatabase.getConnectionDB();
        List<NguonNx_tructhuoc> result = new ArrayList<>();

        String SQL_SELECT = "select * from nguonnx_tructhuoc where nguonnx_id=? and tructhuoc_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);
            preparedStatement.setInt(2, tructhuoc_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int tructhuocId = resultSet.getInt("tructhuoc_id");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                int loaiphieuId = resultSet.getInt("loaiphieu_id");

                NguonNx_tructhuoc nguonNxTructhuoc = new NguonNx_tructhuoc();
                nguonNxTructhuoc.setId(id);
                nguonNxTructhuoc.setTructhuoc_id(tructhuocId);
                nguonNxTructhuoc.setNguonnx_id(nguonnxId);
                nguonNxTructhuoc.setLoaiphieu_id(loaiphieuId);
                result.add(nguonNxTructhuoc);
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
    public NguonNx_tructhuoc findByPrimaryKEy(int nguonnx_id, int tructhuoc_id, int loaiphieu_id) {
        QDatabase.getConnectionDB();
        String SQL_SELECT = "select * from nguonnx_tructhuoc where nguonnx_id=? and tructhuoc_id=? and loaiphieu_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);
            preparedStatement.setInt(2, tructhuoc_id);
            preparedStatement.setInt(3, loaiphieu_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int tructhuocId = resultSet.getInt("tructhuoc_id");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                int loaiphieuId = resultSet.getInt("loaiphieu_id");
                return new NguonNx_tructhuoc(nguonnxId, tructhuocId, loaiphieuId);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public List<TrucThuoc> findAllTrucThuocByNGuonNxID(int nguonnx_id) {
        QDatabase.getConnectionDB();
        List<TrucThuoc> result = new ArrayList<>();

        String SQL_SELECT = "SELECT tructhuoc.id as ttid,name  FROM nguonnx_tructhuoc inner join nguon_nx on nguonnx_tructhuoc.nguonnx_id=nguon_nx.id inner join tructhuoc on nguonnx_tructhuoc.tructhuoc_id=tructhuoc.id where nguonnx_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int tructhuocId = resultSet.getInt("ttid");
                String name = resultSet.getString("name");

                TrucThuoc nguonNxTructhuoc = new TrucThuoc();
                nguonNxTructhuoc.setId(tructhuocId);
                nguonNxTructhuoc.setName(name);
                result.add(nguonNxTructhuoc);
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
    public List<TrucThuoc> findAllTrucThuocByNguonNx(int nguonnx_id, int tructhuocId) {
        QDatabase.getConnectionDB();
        List<TrucThuoc> result = new ArrayList<>();

        String SQL_SELECT = "SELECT tructhuoc.id as ttid,name,tructhuoc.type as type_1  FROM nguonnx_tructhuoc inner join nguon_nx on nguonnx_tructhuoc.nguonnx_id=nguon_nx.id inner join tructhuoc on nguonnx_tructhuoc.tructhuoc_id=tructhuoc.id where nguonnx_id=? and loaiphieu_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);
            preparedStatement.setInt(2, tructhuocId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("ttid");
                String name = resultSet.getString("name");
                String type = resultSet.getString("type_1");

                TrucThuoc trucThuoc = new TrucThuoc();
                trucThuoc.setId(id);
                trucThuoc.setName(name);
                trucThuoc.setType(type);

                result.add(trucThuoc);
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
    public NguonNx_tructhuoc findNguonnx_tructhuocByNnx_lp(int nguonnx_id, int loaiPhieu) {
        QDatabase.getConnectionDB();
        String SQL_SELECT = "select * from nguonnx_tructhuoc where nguonnx_id=? and loaiphieu_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);
            preparedStatement.setInt(2, loaiPhieu);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int tructhuocId = resultSet.getInt("tructhuoc_id");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                int loaiphieuId = resultSet.getInt("loaiphieu_id");

                NguonNx_tructhuoc nguonNxTructhuoc = new NguonNx_tructhuoc();
                nguonNxTructhuoc.setId(id);
                nguonNxTructhuoc.setTructhuoc_id(tructhuocId);
                nguonNxTructhuoc.setNguonnx_id(nguonnxId);
                nguonNxTructhuoc.setLoaiphieu_id(loaiphieuId);
                return nguonNxTructhuoc;
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
    public List<NguonNxTrucThuocDTO> findAllRelationship(int nguonnx_id) {
        QDatabase.getConnectionDB();
        List<NguonNxTrucThuocDTO> result = new ArrayList<>();

        String SQL_SELECT = "SELECT tructhuoc.id as ttid,nguon_nx.id as nnx_id,loai_phieu.id as lpid,name, loai_phieu.type as typelp\n" +
                "FROM nguonnx_tructhuoc inner join nguon_nx on nguonnx_tructhuoc.nguonnx_id=nguon_nx.id \n" +
                "inner join tructhuoc on nguonnx_tructhuoc.tructhuoc_id=tructhuoc.id \n" +
                "inner join loai_phieu on nguonnx_tructhuoc.loaiphieu_id = loai_phieu.id where nguonnx_tructhuoc.nguonnx_id=?";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int tructhuocId = resultSet.getInt("ttid");
                int nguonnxId = resultSet.getInt("nnx_id");
                int lpId = resultSet.getInt("lpid");
                String name = resultSet.getString("name");
                String typelp = resultSet.getString("typelp");

                NguonNxTrucThuocDTO nguonNxTructhuoc = new NguonNxTrucThuocDTO();
                nguonNxTructhuoc.setTructhuoc_id(tructhuocId);
                nguonNxTructhuoc.setName(name);
                nguonNxTructhuoc.setNguonnx_id(nguonnxId);
                nguonNxTructhuoc.setLoaiphieu_id(lpId);
                nguonNxTructhuoc.setType(typelp);
                result.add(nguonNxTructhuoc);
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
    public List<Integer> findAllBillType(int nguonnx_id) {
        QDatabase.getConnectionDB();
        List<Integer> list = new ArrayList<>();
        String SQL_SELECT = "SELECT loaiphieu_id FROM public.nguonnx_tructhuoc where nguonnx_id=? group by loaiphieu_id";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, nguonnx_id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int loaiphieuId = resultSet.getInt("loaiphieu_id");
                list.add(loaiphieuId);
                return list;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public NguonNx_tructhuoc createNew(NguonNx_tructhuoc nguonNxTructhuoc) {
        QDatabase.getConnectionDB();
        String sql = "insert into nguonnx_tructhuoc(nguonnx_id, tructhuoc_id,loaiphieu_id) values(?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, nguonNxTructhuoc.getNguonnx_id());
            statement.setInt(2, nguonNxTructhuoc.getTructhuoc_id());
            statement.setInt(3, nguonNxTructhuoc.getLoaiphieu_id());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return nguonNxTructhuoc;
    }

    @Override
    public NguonNx_tructhuoc update(NguonNx_tructhuoc nguonNxTructhuoc) {
        return null;
    }

    @Override
    public int delete(NguonNx_tructhuoc nguonNxTructhuoc) {
        QDatabase.getConnectionDB();
        String sql = "DELETE FROM nguonnx_tructhuoc WHERE id=?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, nguonNxTructhuoc.getId());
            return statement.executeUpdate();
            // Step 3: Execute the DELETE query
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
