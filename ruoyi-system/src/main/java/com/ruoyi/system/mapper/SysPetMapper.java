package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysPet;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * ClassName: SysPetMapper <br/>
 * Description: <br/>
 * date: 2019/12/16 下午2:25<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface SysPetMapper {
    @Select("SELECT * FROM sys_pet")
    @Results(id = "SysPet",
            value = {
                 @Result(property = "createTime",column = "create_time"),
                 @Result(property = "updateTime",column = "update_time"),

            })
    List<SysPet> selectPetList(SysPet sysPet);
}
