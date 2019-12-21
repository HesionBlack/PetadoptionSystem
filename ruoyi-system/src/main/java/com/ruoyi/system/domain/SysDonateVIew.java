package com.ruoyi.system.domain;/**
 * ClassName: SysFostView <br/>
 * Description: <br/>
 * date: 2019/12/20 上午11:24<br/>
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
 * @create: 2019-12-20 11:24
 **/
@Data
public class SysDonateVIew {
    private String id;
    private String petId;
    private String name;
    private String type;
    private Integer sex;
    //宠物备注
    private String petremark;
    private String applyName;
    private Date createTime;
    private String updateBy;
    private Date updateTime;
    private Integer confirm;
    private String phone;
}
