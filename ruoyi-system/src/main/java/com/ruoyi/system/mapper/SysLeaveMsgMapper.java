package com.ruoyi.system.mapper;/**
 * ClassName: SysLeaveMsgMapper <br/>
 * Description: <br/>
 * date: 2019/12/20 下午4:58<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserLeaveMsg;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-20 16:58
 **/
@Mapper
public interface SysLeaveMsgMapper {
    @Select("SELECT * FROM user_leaveMsg WHERE 1=1 ")
    @Results(id = "SysPetResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
            })
    List<UserLeaveMsg> selectLeaveMsgList(UserLeaveMsg userLeaveMsg) ;
}
