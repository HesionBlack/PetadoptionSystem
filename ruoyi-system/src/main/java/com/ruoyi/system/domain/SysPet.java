package com.ruoyi.system.domain;/**
 * ClassName: SysPet <br/>
 * Description: <br/>
 * date: 2019/12/16 下午1:50<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-16 13:50
 **/
@Data
public class SysPet extends BaseEntity {
      private String id;
      private String name;
      private String type;
      private Date createTime;
      private String adoptStatu;
      private int fostStatu;
      private int sex;
      private String imageUrl;
      private String createBy;
      private String updateBy;
      private Date  updateTime;
      private String remark;
      private int del_flag;
}
