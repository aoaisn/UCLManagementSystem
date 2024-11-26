package ucl.group.talentManageSystem.api.common.utils;

import cn.dev33.satoken.session.SaSession;
import cn.dev33.satoken.stp.StpUtil;

import javax.servlet.http.HttpServletRequest;


/**
 * 权限获取工具类
 *
 * @author hejiale
 */
public class SecurityUtils
{
	/**
	 * 获取用户ID
	 */
	public static int getUserId()
	{
		Object userId = StpUtil.getLoginId();
		return (int)userId;
	}
	/**
	 * 获取用户ID
	 */
	public static String getUserIdAsString()
	{
		String userId = StpUtil.getLoginIdAsString();
		return userId;
	}


	/**
	 * 获取用户名称
	 */
	public static String getUsername()
	{
		Object object = StpUtil.getSession().get("userName");
		return (String)object;
	}

}