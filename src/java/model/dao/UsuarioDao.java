package model.dao;

import java.util.List;
import model.entities.Usuario;

/**
 * @author ccari
 */
public interface UsuarioDao {
    
    void insert(Usuario obj);
    void update(Usuario obj);
    void deleteById(Integer id);
    List<Usuario> findAll();
    Usuario findById(Integer id);
    Usuario findByNameLogin(Usuario obj);
    List<Usuario> findByName(Usuario obj);
    Usuario findByUser(Usuario obj);
}
