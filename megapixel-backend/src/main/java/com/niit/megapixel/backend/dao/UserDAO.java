package com.niit.megapixel.backend.dao;

import java.util.List;

import com.niit.megapixel.backend.model.User;



public interface UserDAO {
	
	public void addUser(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	public User getUserById(int id);
	public List<User> listUsers();
	public User getUserByUsername(String username);

}
