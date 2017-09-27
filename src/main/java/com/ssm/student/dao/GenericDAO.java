package com.ssm.student.dao;

import java.util.List;

public interface GenericDAO<T> {
	public T getById(String id);
	public int insert(T t);
	public List<T> find(String where);
}
