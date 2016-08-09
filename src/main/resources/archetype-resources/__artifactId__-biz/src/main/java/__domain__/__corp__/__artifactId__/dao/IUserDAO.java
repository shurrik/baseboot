package ${groupId}.${artifactId}.dao;

import java.util.List;

import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.${artifactId}.model.User;


public interface IUserDAO extends IBaseDAO<User>{

	public	List<User> findRoleUser();

}
