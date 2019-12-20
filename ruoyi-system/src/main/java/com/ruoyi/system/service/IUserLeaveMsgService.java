package com.ruoyi.system.service;

import com.ruoyi.system.domain.UserLeaveMsg;

import java.util.List;

/**
 * ClassName: IUserLeaveMsgService <br/>
 * Description: <br/>
 * date: 2019/12/20 下午2:27<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IUserLeaveMsgService {
    List<UserLeaveMsg> selectLeaveMsgByuserId(Long userId);

    int leave(UserLeaveMsg userLeaveMsg);
}
