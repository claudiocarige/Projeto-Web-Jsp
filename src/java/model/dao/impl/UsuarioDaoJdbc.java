package model.dao.impl;

import Db.DB;
import Db.DbException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.dao.UsuarioDao;
import model.entities.Usuario;

/**
 *
 * @author ccari
 */
public class UsuarioDaoJdbc implements UsuarioDao {

    private final Connection conn;

    public UsuarioDaoJdbc(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void insert(Usuario obj) {

        PreparedStatement st = null;
        try {
            st = conn.prepareStatement(
                    "INSERT INTO usuarios "
                    + "(nome, usuario, senha, nivel) "
                    + "VALUES "
                    + "(?, ?, ?, ?)");
            
            st.setString(1, obj.getNome());
            st.setString(2, obj.getUsuario());
            st.setString(3, obj.getSenha());
            st.setString(4, obj.getNivel());
            st.executeUpdate();

        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        } finally {
            DB.closeStatment(st);
            DB.closeConnection();
        }
    }

    @Override
    public void update(Usuario obj) {
        PreparedStatement st = null;
        try {
            st = conn.prepareStatement(
                    "UPDATE usuarios "
                    + "SET nome = ?, usuario = ?, senha = ?, "
                    + "nivel = ? WHERE Id = ?"
            );
           
            st.setString(1, obj.getNome());
            st.setString(2, obj.getUsuario());
            st.setString(3, obj.getSenha());
            st.setString(4, obj.getNivel());
            st.setInt(5, obj.getId());
            st.executeUpdate();
            
        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        } finally {
            DB.closeStatment(st);
            DB.closeConnection();
        }
    }

    @Override
    public void deleteById(Integer id) {

        PreparedStatement st = null;

        try {
            st = conn.prepareStatement("DELETE FROM usuarios WHERE Id = ?");

            st.setInt(1, id);
            int rowAffect = st.executeUpdate();
            if (rowAffect == 0) {
                throw new DbException("Error! Id not found.");
            }
        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        } finally {
            DB.closeStatment(st);
            DB.closeConnection();
        }
    }

    private Usuario InstantiateUsuario(ResultSet rs) throws SQLException {
        Usuario usuario = new Usuario();
        usuario.setId(rs.getInt("id"));
        usuario.setNome(rs.getString("nome"));
        usuario.setUsuario(rs.getString("usuario"));
        usuario.setSenha(rs.getString("senha"));
        usuario.setNivel(rs.getString("nivel"));
        usuario.setRow(rs.getRow());
        return usuario;

    }

    @Override
    public List<Usuario> findAll() {
        PreparedStatement st = null;
        ResultSet rs = null;
        List<Usuario> list = new ArrayList<>();

        try {
            st = conn.prepareStatement("SELECT * FROM usuarios usuario "
                                    + "order by nome asc");
            
            rs = st.executeQuery();
            while (rs.next()) {
                Usuario usuario = InstantiateUsuario(rs);
                list.add(usuario);
            }
            return list;
        } catch (SQLException e) {

            throw new DbException(e.getMessage());

        } finally {
            DB.closeStatment(st);
            DB.closeResultSet(rs);
            DB.closeConnection();
        }
    }

    @Override
    public Usuario findById(Integer id) {
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            st = conn.prepareStatement("SELECT * FROM usuarios WHERE id = ?");
            
            st.setInt(1, id);
            rs = st.executeQuery();
            if (rs.next()) {
                Usuario usuario = InstantiateUsuario(rs);
                return usuario;
            }
            return null;
        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        } finally {
            DB.closeStatment(st);
            DB.closeResultSet(rs);
            DB.closeConnection();
        }
    }

    @Override
    public Usuario findByNameLogin(Usuario obj) {
        
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            st = conn.prepareStatement("SELECT * FROM usuarios WHERE usuario = ?  and senha = ?");
            
            st.setString(1, obj.getUsuario());
            st.setString(2, obj.getSenha());
            rs = st.executeQuery();
            if(rs.next()){
                Usuario usuario = InstantiateUsuario(rs);
                return usuario;
            }
            return null;
        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        }finally{
            DB.closeStatment(st);
            DB.closeResultSet(rs);
            DB.closeConnection();
        }
    }
    
    @Override
    public List<Usuario> findByName(Usuario obj) {
        
        PreparedStatement st = null;
        ResultSet rs = null;
        List<Usuario> list = new ArrayList<>();

        try {
            st = conn.prepareStatement("SELECT * FROM usuarios WHERE nome "
                                    + "LIKE (?) order by nome asc");
            st.setString(1, obj.getNome());
            rs = st.executeQuery();
            while (rs.next()) {
                Usuario usuario = InstantiateUsuario(rs);
                list.add(usuario);
            }
            return list;
        } catch (SQLException e) {

            throw new DbException(e.getMessage());

        } finally {
            DB.closeStatment(st);
            DB.closeResultSet(rs);
            DB.closeConnection();
        }
        
    }
    
    @Override
    public Usuario findByUser(Usuario obj) {
        
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            st = conn.prepareStatement("SELECT * FROM usuarios WHERE usuario = ?");
            
            st.setString(1, obj.getUsuario());
            rs = st.executeQuery();
            if(rs.next()){
              Usuario usuario = InstantiateUsuario(rs);
                return usuario;
            }
            return null;
        } catch (SQLException e) {
            throw new DbException(e.getMessage());
        }finally{
            DB.closeStatment(st);
            DB.closeResultSet(rs);
            DB.closeConnection();
        }
    }
}
