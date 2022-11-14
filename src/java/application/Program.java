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
        for(int i = 40; i < 70; i++){
            UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
            String nome = "Claudio 0" + i;
            String email = "ccarige0" + i +"@gmail.com";
            String senha = "1" + i;
            Usuario usuario = new Usuario(nome, email, senha, "comum");
    //        usuario.setUsuario("tatata@gmail.com");
    //        usuario.setSenha("123");
            usuarioDao.insert(usuario);

            System.out.println(usuario);
        }
    }
     
}
