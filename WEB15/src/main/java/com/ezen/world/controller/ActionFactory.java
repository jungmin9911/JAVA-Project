package com.ezen.world.controller;


import com.ezen.world.controller.action.Action;
import com.ezen.world.controller.action.IndexAction;
import com.ezen.world.controller.action.member.JoinFormAction;
import com.ezen.world.controller.action.member.LoginFormAction;
import com.ezen.world.controller.action.member.LogoutAction;

public class ActionFactory {
	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() {return itc;}

	
	public Action getAction(String command) {
		Action ac = null;
		if( command.equals("index") ) ac = new IndexAction();
		else if( command.equals("loginForm") ) ac = new LoginFormAction();
		else if( command.equals("joinForm") ) ac = new JoinFormAction();
		else if( command.equals("logout") ) ac = new LogoutAction();
		

		
		return ac;
	}
	
	
}
