package com.matete.agentmanage.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.model.Agent;

public class AccountService {

    private static final Agent agentDao = new Agent().dao();
    
    /**
     * 登录
     * @param phone
     * @param password
     * @return
     */
    public boolean login(String phone, String password) {
        return agentDao.findFirst(
                "select * from agent where Phone = ? and Password = ?",
                phone,
                DigestUtils.md5Hex(password)) != null;
    }

    /**
     * 通用查询property表
     * @param string
     * @return
     */
    public List<Record> getPropertyList(String propertyKey) {
        return Db.find("select * from property where PropertyKey = ?", propertyKey);
    }

    /**
     * 注册
     * @param phone
     * @param password
     * @param name
     * @param qq
     * @param agentLevel
     * @return
     */
    public boolean register(String phone, String password, String name, String qq, int agentLevel) {
        
       return new Agent().setPhone(phone)
        .setPassword(DigestUtils.md5Hex(password))
        .setName(name)
        .setQQ(qq)
        .setAgentLevel(agentLevel)
        .setCreateTime(new Date())
        .save();
    }

}
