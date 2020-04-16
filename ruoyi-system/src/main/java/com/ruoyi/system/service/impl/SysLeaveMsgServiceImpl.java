package com.ruoyi.system.service.impl;/**
 * ClassName: SysLeaveMsgServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/20 下午4:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysLeaveMsgReply;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserLeaveMsg;
import com.ruoyi.system.mapper.SysLeaveMsgMapper;
import com.ruoyi.system.service.ISysLeaveMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-20 16:56
 **/
@Service
public class SysLeaveMsgServiceImpl implements ISysLeaveMsgService {
    @Autowired
    SysLeaveMsgMapper sysLeaveMsgMapper;
    @Override
    public List<UserLeaveMsg> selectLeaveMsgList(UserLeaveMsg userLeaveMsg) {
        return sysLeaveMsgMapper.selectLeaveMsgList(userLeaveMsg);
    }

    @Override
    public UserLeaveMsg findMsgById(String id) {
        return sysLeaveMsgMapper.findMsgById(id);
    }

    @Override
    public int replyMsg(SysLeaveMsgReply sysLeaveMsgReply) {
        return sysLeaveMsgMapper.replyMsg(sysLeaveMsgReply);
    }

    @Override
    public int setReplyStatu(String id) {
        return sysLeaveMsgMapper.setReplyStatu(id);
    }

    @Override
    public List<SysLeaveMsgReply> findReplyById(String id) {
        return sysLeaveMsgMapper.findReplyById(id);
    }

    @Override
    public void deleteReplyById(String ids) {
        String[] id = ids.split(",");
        sysLeaveMsgMapper.deleteReplyById(id);
    }

    @Override
    public int deleteLeaveById(String ids) {
        String[] id = ids.split(",");
        return sysLeaveMsgMapper.deleteLeaveById(id);
    }
}
