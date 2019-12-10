package com.servlet.bean;

import java.sql.SQLException;

import com.servlet.bean.Login;

public interface LoginImpl {
	boolean validate(Login login) throws SQLException;
}
