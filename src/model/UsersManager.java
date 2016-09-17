package model;

import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;

import model.db.UserDAO;

public class UsersManager {

	private ConcurrentHashMap<String, User> registerredUsers;//username -> user
	private static UsersManager instance;
	private UsersManager(){
		registerredUsers = new ConcurrentHashMap<>();
		for(User u : UserDAO.getInstance().getAllUsers()){
			registerredUsers.put(u.getUsername(), u);
			System.out.println(u.getUsername() + " Loaded");
		}
	}
	
	public synchronized static UsersManager getInstance(){
		if(instance == null){
			instance = new UsersManager();
		}
		return instance;
	}
	
	public boolean validLogin(String username, String password){
		
		// !!! NOT WORKING IDK WHY !!!
		
		if(!registerredUsers.containsKey(username)){
			return false;
		}
		return registerredUsers.get(username).getPassword().equals(password);
	}
	
	public void regUser(String username, String password, String email){
		if(!registerredUsers.containsKey(username)){
			
		User user = new User(username, password, email);
		registerredUsers.put(username, user);
		UserDAO.getInstance().saveUser(user);
		}
		else{
			System.out.println("Username already exists");
		}
	}
}
