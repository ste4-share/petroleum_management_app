package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.GroupTitle;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.entity.NguonnxTitle;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.NguonNXService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NguonNXImp implements NguonNXService {

    @Override
    public List<NguonNx> getAll() {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();


        String SQL_SELECT = "Select * from nguon_nx";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");
                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                result.add(obj);
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
    public List<NguonNx> getAllAndNguonnx() {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();
        String SQL_SELECT = "Select * from nguon_nx";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");
                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                result.add(obj);
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
    public List<NguonNx> getAllUnless(String ten_1) {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();


        String SQL_SELECT = "Select * from nguon_nx where ten <> ?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1,ten_1);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");
                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                result.add(obj);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return result;
    }

    @Override
    public List<NguonNx> getAllByLoaiPhieu(int loai_phieu) {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();


        String SQL_SELECT = "select nguon_nx.* from nguonnx_tructhuoc \n" +
                "join nguon_nx on nguonnx_tructhuoc.nguonnx_id=nguon_nx.id\n" +
                "join loai_phieu on nguonnx_tructhuoc.loaiphieu_id=loai_phieu.id \n" +
                "where loai_phieu.id=?;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1,loai_phieu);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");
                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                result.add(obj);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return result;
    }

    @Override
    public NguonNx findNguonNXByName_NON(String name) {
        QDatabase.getConnectionDB();
        NguonNx result = new NguonNx();


        String SQL_SELECT = "Select * from nguon_nx where ten=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, name);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");

                result.setId(id);
                result.setCreatetime(createtime);
                result.setTen(ten);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<GroupTitle> getAllGroup() {
        QDatabase.getConnectionDB();
        List<GroupTitle> result = new ArrayList<>();


        String SQL_SELECT = "SELECT * FROM group_title";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String groupName = resultSet.getString("group_name");
                String groupCode = resultSet.getString("group_code");
                result.add(new GroupTitle(id, groupName, groupCode));
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
    public List<NguonnxTitle> getAllNnxTitles(int groupId) {
        QDatabase.getConnectionDB();
        List<NguonnxTitle> result = new ArrayList<>();
        String SQL_SELECT = "SELECT * FROM nguonnx_title where group_id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, groupId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                int titleId = resultSet.getInt("title_id");
                int groupId1 = resultSet.getInt("group_id");

                result.add(new NguonnxTitle(id, nguonnxId, titleId, groupId1));
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
    public int createNew(NguonnxTitle nguonnxTitle) {
        QDatabase.getConnectionDB();
        String sql = "insert into nguonnx_title(nguonnx_id, title_id, group_id) values(?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, nguonnxTitle.getNguonnx_id());
            statement.setInt(2, nguonnxTitle.getTitle_id());
            statement.setInt(3, nguonnxTitle.getGroup_id());
            return statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public NguonNx create(NguonNx nguonNx) {

        QDatabase.getConnectionDB();
        String sql = "insert into nguon_nx(ten) values(?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, nguonNx.getTen());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return nguonNx;
    }

    @Override
    public NguonNx update(NguonNx nguonNx) {
        return null;
    }

    @Override
    public NguonNx findById(int id1) {
        QDatabase.getConnectionDB();
        NguonNx result = new NguonNx();

        String SQL_SELECT = "select * from nguon_nx where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String createtime = resultSet.getString("createtime");

                result.setId(id);
                result.setTen(ten);
                result.setCreatetime(createtime);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return result;
    }

}
