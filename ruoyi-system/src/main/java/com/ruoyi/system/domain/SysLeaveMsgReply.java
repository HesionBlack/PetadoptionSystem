package com.ruoyi.system.domain;/**
 * ClassName: SysLeaveMsgReply <br/>
 * Description: <br/>
 * date: 2019/12/21 上午10:38<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import lombok.Data;

import java.util.Date;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-21 10:38
 **/
@Data
public class SysLeaveMsgReply {
    private String id;
    private String msgId;
    private Date replyTime;
    private Long replayerId;
    private String replayName;
    private String msg;
}
