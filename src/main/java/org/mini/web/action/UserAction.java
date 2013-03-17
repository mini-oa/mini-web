/**
 * 
 */
package org.mini.web.action;

import java.util.List;

import javax.annotation.Resource;

import org.mini.framework.action.BaseAction;
import org.mini.model.system.User;
import org.mini.service.UserService;

import com.opensymphony.xwork2.Action;

/**
 * @author Administrator
 *
 */
public class UserAction extends BaseAction {
	
	@Resource
	private UserService userService;
	
	private List<User> list;

	/**
	 * @return the list
	 */
	public List<User> getList() {
		return list;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception {
		list = userService.search(null);
		
		return Action.SUCCESS;
	}

}
