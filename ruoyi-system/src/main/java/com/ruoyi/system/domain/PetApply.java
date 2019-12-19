package com.ruoyi.system.domain;/**
 * ClassName: PetApply <br/>
 * Description: <br/>
 * date: 2019/12/18 下午4:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-18 16:56
 **/
@Data
public class PetApply extends BaseEntity {
    private String id;
    private Long uId;
    private  String pId;
private int confirm;
}
