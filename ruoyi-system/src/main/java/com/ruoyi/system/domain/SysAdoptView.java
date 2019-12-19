package com.ruoyi.system.domain;/**
 * ClassName: SysAdoptView <br/>
 * Description: <br/>
 * date: 2019/12/19 上午11:09<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import lombok.Data;

import java.util.Date;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2019-12-19 11:09
 **/
@Data
public class SysAdoptView {
    private String id;
    private String petId;
    private String name;
    private String type;
    private Integer sex;
    //宠物备注
    private String petremark;
    private String applyName;
    //申请理由
    private String applyremark;
    private Date createTime;
    private String updateBy;
    private Date updateTime;
    private Integer confirm;
}
