package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysLeaveMsgReply;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserLeaveMsg;

import java.util.List;

/**
 * ClassName: ISysLeaveMsgService <br/>
 * Description: <br/>
 * date: 2019/12/20 下午4:56<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ISysLeaveMsgService {
    List<UserLeaveMsg> selectLeaveMsgList(UserLeaveMsg userLeaveMsg);

    UserLeaveMsg findMsgById(String id);

    int replyMsg(SysLeaveMsgReply sysLeaveMsgReply);

    int setReplyStatu(String id);

    List<SysLeaveMsgReply> findReplyById(String id);

    void deleteReplyById(String ids);

    int deleteLeaveById(String ids);
}
