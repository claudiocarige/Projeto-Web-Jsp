package model.dao;

import Db.DB;
import java.sql.SQLException;
import model.dao.impl.UsuarioDaoJdbc;

/**
 *
 * @author ccari
 */
public class DaoFactory {
    
    public static UsuarioDao createUsuarioDao() throws ClassNotFoundException, SQLException {
            return new UsuarioDaoJdbc(DB.getConnection());
    }
    
}
