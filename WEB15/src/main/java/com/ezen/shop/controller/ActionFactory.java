package com.ezen.shop.controller;

import com.ezen.shop.controller.action.Action;

public class ActionFactory {
	
	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() { return itc; }
	
	public Action getAction(String command) {
		Action ac = null;
		if(command.equals("index"))  ac = new IndexAction();
		else if(command.equals("loginForm"))  ac = new LoginFormAction();
		else if(command.equals("login"))  ac = new LoginAction();
		
		return ac;
		
 }
}
