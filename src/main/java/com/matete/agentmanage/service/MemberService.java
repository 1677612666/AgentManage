package com.matete.agentmanage.service;

import org.apache.commons.lang3.StringUtils;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.common.GlobalSettings;
import com.matete.agentmanage.model.Accountuserinfo;

public class MemberService {

	public static final Accountuserinfo accountuserinfoDao = new Accountuserinfo().dao();

	/**
	 * 查询会员数据
	 * 
	 * @param pageNumber
	 * @param searchContent
	 * @return
	 */
	public Page<Record> getMemberRecord(int pageNumber, String searchContent) {
		String selectSql = "select a.GameID,a.SecurityID,a.SecretAnswer,a.GeneralizedID,a.NickName,a.Account,a.IdentityID,a.Name,a.LastLoginTime,a.OfflineTime,a.isAndroid,a.LastLoginIp,a.RegistrationTime,a.RegisterDevice,a.StateID,a.sex,a.loginDevice,a.generalizeid,a.serviceip,a.serviceport,a.backyards,a.WeChatUrl,r.Score,r.Wins,r.Fields,r.Escape,r.GameTime,r.GameCount,r.OnlinGameTime,r.gold";
		if (StringUtils.isNotBlank(searchContent)) {
			Page<Record> members = null;
			members = Db.paginate(pageNumber, GlobalSettings.PAGE_SIZE, selectSql,
					"from accountuserinfo a,roomcard r where a.GameID = r.GameID and StateID = ? and a.GameID = ?",
					GlobalSettings.MEMBER_STATUS, searchContent);
			// 如果没查到数据，那么members中lisi集合长度为0
			if (members.getList().size() == 0) {
				members = Db.paginate(pageNumber, GlobalSettings.PAGE_SIZE, selectSql,
						"from accountuserinfo a,roomcard r where a.GameID = r.GameID and StateID = ? and a.NickName like ?",
						GlobalSettings.MEMBER_STATUS, "%" + searchContent + "%");
			}
			return members;
		}
		return Db.paginate(pageNumber, GlobalSettings.PAGE_SIZE, selectSql,
				"from accountuserinfo a,roomcard r where a.GameID = r.GameID and StateID = ?",
				GlobalSettings.MEMBER_STATUS);
	}

	/**
	 * 冻结指定会员
	 * 
	 * @param id
	 */
	public void memberEdit(int id) {
		accountuserinfoDao.findById(id).setStateID(0).update();
	}

}
