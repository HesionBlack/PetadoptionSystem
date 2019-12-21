package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.UserLeaveMsg;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: UserLeaveMsgMapper <br/>
 * Description: <br/>
 * date: 2019/12/20 下午2:30<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface UserLeaveMsgMapper {
    @Select("SELECT * FROM user_leaveMsg WHERE uId=#{userId}")
    @Results(id = "SysPetResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
            })
    List<UserLeaveMsg> selectLeaveMsgByuserId(Long userId);

    @Insert("INSERT INTO" +
            " user_leaveMsg " +
            "VALUE(REPLACE(UUID(), '-', ''),#{m.uId},#{m.msg},#{m.createTime},#{m.createBy},#{m.replayStatu})")
    int leave(@Param("m") UserLeaveMsg userLeaveMsg);
}
