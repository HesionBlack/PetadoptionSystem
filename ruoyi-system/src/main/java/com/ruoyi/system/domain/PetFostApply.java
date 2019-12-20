package com.ruoyi.system.domain;/**
 * ClassName: PetFostApply <br/>
 * Description: <br/>
 * date: 2019/12/20 上午9:37<br/>
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
 * @create: 2019-12-20 09:37
 **/
@Data
public class PetFostApply {
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
}
