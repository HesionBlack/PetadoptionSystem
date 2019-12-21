package com.ruoyi.system.service.impl;/**
 * ClassName: UserLeaveMsgServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/20 下午2:27<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.UserLeaveMsg;
import com.ruoyi.system.mapper.UserLeaveMsgMapper;
import com.ruoyi.system.service.IUserLeaveMsgService;
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
 * @create: 2019-12-20 14:27
 **/
@Service
public class UserLeaveMsgServiceImpl  implements IUserLeaveMsgService {

    @Autowired
    UserLeaveMsgMapper userLeaveMsgMapper;
    @Override
    public List<UserLeaveMsg> selectLeaveMsgByuserId(Long userId) {
        return userLeaveMsgMapper. selectLeaveMsgByuserId(userId);
    }

    @Override
    public int leave(UserLeaveMsg userLeaveMsg) {
        userLeaveMsg.setCreateTime(new Date());
        userLeaveMsg.setReplayStatu(0);
        return userLeaveMsgMapper.leave(userLeaveMsg);
    }
}
