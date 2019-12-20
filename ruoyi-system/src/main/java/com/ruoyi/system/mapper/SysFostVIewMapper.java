package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysFostView;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * ClassName: ApplyFostMapper <br/>
 * Description: <br/>
 * date: 2019/12/20 上午11:28<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface SysFostVIewMapper {
    @Select("SELECT * FROM v_pet_applyfost WHERE del_flag=\'0\'")
    @Results(id = "SysPetFostResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysFostView> selectFostList(SysFostView sysAdoptView);
}
