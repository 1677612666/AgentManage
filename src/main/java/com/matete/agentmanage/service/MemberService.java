package com.matete.agentmanage.service;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.common.GlobalSettings;

public class MemberService {

	public Page<Record> getMemberList(int pageNumber) {
		String selectSql = "select a.GameID,a.SecurityID,a.SecretAnswer,a.GeneralizedID,a.NickName,a.Account,a.IdentityID,a.Name,a.LastLoginTime,a.OfflineTime,a.isAndroid,a.LastLoginIp,a.RegistrationTime,a.RegisterDevice,a.StateID,a.sex,a.loginDevice,a.generalizeid,a.serviceip,a.serviceport,a.backyards,a.WeChatUrl,r.Score,r.Wins,r.Fields,r.Escape,r.GameTime,r.GameCount,r.OnlinGameTime,r.gold";
		return Db.paginate(pageNumber, GlobalSettings.PAGE_SIZE, selectSql, "from accountuserinfo a,roomcard r where a.GameID = r.GameID");
	}

}
