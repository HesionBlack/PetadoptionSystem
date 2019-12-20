package com.ruoyi.system.domain;/**
 * ClassName: PetApplyView <br/>
 * Description: <br/>
 * date: 2019/12/19 下午2:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;
import java.util.Map;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-19 14:56
 **/
@Data
public class PetApplyView  {

    private String petName;
    private String type;
    private Integer sex;
    private Date createTime;
    private Integer confirm;
    private Long uId;
}
