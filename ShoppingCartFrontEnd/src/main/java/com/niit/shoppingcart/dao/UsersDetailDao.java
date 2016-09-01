package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.UsersDetail;

public interface UsersDetailDao {

    void addUser (UsersDetail usersDetail);

    UsersDetail getUserById (int userId);

    List<UsersDetail> getAllUsers();

    UsersDetail getUserByUsername (String username);

}
