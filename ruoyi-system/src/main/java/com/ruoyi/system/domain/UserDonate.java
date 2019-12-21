package com.ruoyi.system.domain;/**
 * ClassName: UserDonate <br/>
 * Description: <br/>
 * date: 2019/12/21 下午4:26<br/>
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
 * @create: 2019-12-21 16:26
 **/
@Data
public class UserDonate {
    private String id;
    private String name;
    private String type;
    private Date createTime;
    private Integer sex;
    private String imageUrl;
    private String createBy;
    private String updateBy;
    private Date  updateTime;
    private String remark;
    private Integer confirm;
    private Integer del_flag;
    private Long uId;
    private String phone;
}
