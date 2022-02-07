package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.User;

public class Container {

	 public Container() {
		 

	 }
	 
	 public void addUser(User novoUsuario) {
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			try {
				PreparedStatement p = con.prepareStatement("insert into users (nome, pais, email) values (?, ?, ?)");
				p.setString(1, novoUsuario.getNome());
				p.setString(2, novoUsuario.getPais());
				p.setString(3, novoUsuario.getEmail());
				System.out.println(p);
				p.executeUpdate();
				System.out.println("Comando executado");
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		public ArrayList<User> getListUser(){
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			ArrayList<User> lista = new ArrayList<User>();
			try {
				PreparedStatement p = con.prepareStatement("select * from users");
				ResultSet r = p.executeQuery();			
				
				while (r.next()) {
					Integer id = r.getInt("id");
					String nome = r.getString("nome");
					String pais = r.getString("pais");
					String email = r.getString("email");
					User u = new User(nome, pais, email);
					u.setId(id);
					lista.add(u);
				}
				r.close();
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return lista;
		}
		
		public void removeUser(Integer id) {
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			try {
				PreparedStatement p = con.prepareStatement("delete from users where id = ?");
				p.setInt(1, id);
				System.out.println(p);
				p.executeUpdate();
				System.out.println("Comando executado");
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		

		public void updateUser(User updateUser) {
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			try {
				PreparedStatement p = con.prepareStatement("update users set nome = ?, pais = ?, email = ? where id = ?");
				p.setString(1, updateUser.getNome());
				p.setString(2, updateUser.getPais());
				p.setString(3, updateUser.getEmail());
				p.setInt(4, updateUser.getId());
				System.out.println(p);
				p.executeUpdate();
				System.out.println("Comando executado");
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
		public User buscarUser(Integer id) {
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			User u = null;
			try {
				PreparedStatement p = con.prepareStatement("select * from users where id = ?");
				p.setInt(1, id);
				ResultSet r = p.executeQuery();			
				
				
				while (r.next()) {
					
					String nome = r.getString("nome");
					String pais = r.getString("pais");
					String email = r.getString("email");
					u = new User(nome, pais, email);
					u.setId(id);
				}
				r.close();
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return u;
		}
	 
}
