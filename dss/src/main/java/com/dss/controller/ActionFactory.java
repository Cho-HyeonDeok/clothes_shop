package com.dss.controller;

import com.dss.admin.controller.action.AdminIndexAction;
import com.dss.admin.controller.action.AdminLoginAction;
import com.dss.admin.controller.action.AdminLogoutAction;
import com.dss.admin.controller.action.AdminMemberListAction;
import com.dss.admin.controller.action.AdminOrderListAction;
import com.dss.admin.controller.action.AdminOrderSaveAction;
import com.dss.admin.controller.action.AdminProductDetailAction;
import com.dss.admin.controller.action.AdminProductListAction;
import com.dss.admin.controller.action.AdminProductUpdateAction;
import com.dss.admin.controller.action.AdminProductUpdateFormAction;
import com.dss.admin.controller.action.AdminProductWriteAction;
import com.dss.admin.controller.action.AdminProductWriteFormAction;
import com.dss.admin.controller.action.AdminQnaDetailAction;
import com.dss.admin.controller.action.AdminQnaListAction;
import com.dss.admin.controller.action.AdminQnaResaveAction;
import com.dss.controller.action.Action;
import com.dss.controller.action.CartDeleteAction;
import com.dss.controller.action.CartInsertAction;
import com.dss.controller.action.CartListAction;
import com.dss.controller.action.IdCheckFormAction;
import com.dss.controller.action.IndexAction;
import com.dss.controller.action.JoinAction;
import com.dss.controller.action.JoinFormAction;
import com.dss.controller.action.KakaoLoginAction;
import com.dss.controller.action.LikeCartDeleteAction;
import com.dss.controller.action.LikeCartInsertAction;
import com.dss.controller.action.LikeCartListAction;
import com.dss.controller.action.LoginAction;
import com.dss.controller.action.LoginFormAction;
import com.dss.controller.action.LogoutAction;
import com.dss.controller.action.MyPageAction;
import com.dss.controller.action.OrderDetailAction;
import com.dss.controller.action.OrderDetailAllAction;
import com.dss.controller.action.OrderInsertAction;
import com.dss.controller.action.OrderListAction;
import com.dss.controller.action.ProductDetailAction;
import com.dss.controller.action.ProductKindAction;
import com.dss.controller.action.ProductSearchAction;
import com.dss.controller.action.QnaListAction;
import com.dss.controller.action.QnaViewAction;
import com.dss.controller.action.QnaWriteAction;
import com.dss.controller.action.QnaWriteFormAction;

public class ActionFactory {
	// singletone
	public ActionFactory() {super();}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {return instance;}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("index")) {
			action = new IndexAction();
		} else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		} else if (command.equals("catagory")) {
			action = new ProductKindAction();
		} else if (command.equals("contract")) {
			action = new ContractAction();
		} else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("id_check_form")) {
			action = new IdCheckFormAction();
		} else if (command.equals("join")) { 
			action = new JoinAction();
		} else if (command.equals("login_form")) {
			action = new LoginFormAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		} else if (command.equals("cart_list")) {
			action = new CartListAction();
		} else if (command.equals("cart_insert")) {
			System.out.println("af : 카트 인서트 실행");
			action = new CartInsertAction();
		} else if (command.equals("cart_delete")) {
			action = new CartDeleteAction();
		} else if (command.equals("order_insert")) {
			System.out.println("ds");
			action = new OrderInsertAction();
		} else if(command.equals("order_list")) {
			System.out.println("ds");
			action = new OrderListAction();
		} else if (command.equals("mypage")) {
			action = new MyPageAction();
		} else if (command.equals("order_detail")) {
			action = new OrderDetailAction();
		} else if (command.equals("order_all")) {
			action = new OrderDetailAllAction();
		} else if (command.equals("qna_list")) {
			action = new QnaListAction();
		} else if (command.equals("qna_write_form")) {
			action = new QnaWriteFormAction();
		} else if (command.equals("qna_write")) {
			action = new QnaWriteAction();
		} else if (command.equals("qna_view")) {
			action = new QnaViewAction();
		} else if (command.equals("product_search_list")) {
			action = new ProductSearchAction();
		}else if (command.equals("kakaoLogin")) {
			action = new KakaoLoginAction();
		}
		
		// admin
		else if (command.equals("admin_login_form")) {
			action = new AdminIndexAction();
		} else if (command.equals("admin_login")) {
			action = new AdminLoginAction();
		} else if (command.equals("admin_logout")) {
			action = new AdminLogoutAction();
		} else if (command.equals("admin_product_list")) {
			action = new AdminProductListAction();
		} else if (command.equals("admin_product_write_form")) {
			action = new AdminProductWriteFormAction();
		} else if (command.equals("admin_product_write")) {
			action = new AdminProductWriteAction();
		} else if (command.equals("admin_product_detail")) {
			action = new AdminProductDetailAction();
		} else if (command.equals("admin_product_update_form")) {
			action = new AdminProductUpdateFormAction();
		} else if (command.equals("admin_product_update")) {
			action = new AdminProductUpdateAction();
		} else if (command.equals("admin_order_list")) {
			action = new AdminOrderListAction();
		} else if (command.equals("admin_order_save")) {
			action = new AdminOrderSaveAction();
		} else if (command.equals("admin_member_list")) {
			action = new AdminMemberListAction();
		} else if (command.equals("admin_qna_list")) {
			action = new AdminQnaListAction();
		} else if (command.equals("admin_qna_detail")) {
			action = new AdminQnaDetailAction();
		} else if (command.equals("admin_qna_repsave")) {
			action = new AdminQnaResaveAction();
		}
		
		// like cart
		else if (command.equals("likecart_insert")) {
			action = new LikeCartInsertAction();
		} else if (command.equals("likecart_list")) {
			action = new LikeCartListAction();
		} else if (command.equals("likecart_delete")) {
			action = new LikeCartDeleteAction();
		}
		
		return action;
	}
}
