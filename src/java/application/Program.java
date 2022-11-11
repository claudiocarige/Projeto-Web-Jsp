package application;

import java.sql.SQLException;
import model.dao.DaoFactory;
import model.dao.UsuarioDao;
import model.entities.Usuario;

/**
 *
 * @author ccari
 */
public class Program {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        
        UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
        Usuario usuario = new Usuario("Claudio Carige", "ccarige@gmail.com", "123", "admin");
//        usuario.setUsuario("tatata@gmail.com");
//        usuario.setSenha("123");
        usuarioDao.insert(usuario);
        
        System.out.println(usuario);
    }
     
}
