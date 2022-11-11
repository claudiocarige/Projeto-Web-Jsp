
package model.entities;

import java.util.Objects;

/**
 *
 * @author ccari
 */
public class Usuario{
    
  	private Integer id;
	private String nome;
	private String usuario;
	private String senha;
	private String nivel;
        private Integer row;
	
	public Usuario() {
	}

	public Usuario(Integer id, String nome, String usuario, String senha, String nivel) {
		this.id = id;
		this.nome = nome;
		this.usuario = usuario;
		this.senha = senha;
		this.nivel = nivel;
	}
	
	public Usuario(String nome, String usuario, String senha, String nivel) {
		this.nome = nome;
		this.usuario = usuario;
		this.senha = senha;
		this.nivel = nivel;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

        public Integer getRow(){
                return row;
        }
        
        public void setRow(Integer row) {
		this.row = row;
	}
        
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNivel() {
		return nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "Usuario [id = " + id + ", nome = " 
                                + nome + ", usuario = " 
                                + usuario + ", senha = " 
                                + senha + ", nivel = " 
                                + nivel	+ ", row = "
                                + row + "]";
	}
    
    
}
