package com.ruoyi.system.mapper;/**
 * ClassName: SysLeaveMsgMapper <br/>
 * Description: <br/>
 * date: 2019/12/20 下午4:58<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysLeaveMsgReply;
import com.ruoyi.system.domain.UserLeaveMsg;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2019-12-20 16:58
 **/
@Mapper
public interface SysLeaveMsgMapper {
    @Select("SELECT * FROM user_leaveMsg WHERE 1=1 ")
    @Results(id = "SysLeaveMsgResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
            })
    List<UserLeaveMsg> selectLeaveMsgList(UserLeaveMsg userLeaveMsg);

    @Select("SELECT * FROM user_leaveMsg WHERE id=#{id}")
    @Results(id = "SysLeaveMsgResultById",
            value = {
                    @Result(property = "createTime", column = "create_time"),
            })
    UserLeaveMsg findMsgById(String id);

    @Insert("INSERT INTO user_leaveMsg_reply VALUE(REPLACE(UUID(), '-', ''),#{s.msgId},#{s.replyTime},#{s.replayerId},#{s.replayName},#{s.msg})")
    int replyMsg(@Param("s") SysLeaveMsgReply sysLeaveMsgReply);

    @Update("UPDATE user_leaveMsg SET  replayStatu = 1 WHERE id=#{id}")
    int setReplyStatu(String id);

    @Select("SELECT * FROM user_leaveMsg_reply WHERE msgId=#{id} ORDER BY replyTime DESC")
    List<SysLeaveMsgReply> findReplyById(String id);
    @Delete("<script>" +
            "DELETE FROM user_leavemsg_reply  where msgId in" +
            "<foreach collection=\"ids\" item=\"id\" open=\"(\" separator=\",\" close=\")\">" +
            "#{id}" +
            "</foreach> " +
            "</script>")
    void deleteReplyById(@Param("ids") String[] ids);
    @Delete("<script>" +
            "DELETE FROM user_leavemsg  where id in" +
            "<foreach collection=\"ids\" item=\"id\" open=\"(\" separator=\",\" close=\")\">" +
            "#{id}" +
            "</foreach> " +
            "</script>")
    int deleteLeaveById(@Param("ids") String[] ids);

}
