/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
//        for (int i = 1; i < 20; i++) {
//            UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
//            String nome = "Fulano00" + i;
//            String usuario = "Fulano00" + i + "@gmail.com";
//            String senha = "123";
//            String nivel = "comum";
//            Usuario obj = new Usuario( nome,usuario,senha,nivel );
//            usuarioDao.insert(obj);
//        }
        
        UsuarioDao usuarioDao = DaoFactory.createUsuarioDao();
        Usuario obj = new Usuario( "admin","admin@admin.com","123","admin" );
        usuarioDao.insert(obj);
    }
    
}
