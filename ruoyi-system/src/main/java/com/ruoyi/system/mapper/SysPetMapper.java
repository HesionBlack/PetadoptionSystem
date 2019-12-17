package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysPet;
import org.apache.ibatis.annotations.*;

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
    @Select("SELECT  ImageUrl  FROM sys_pet WHERE id=#{id}")
    String findImageUrl(String id);
@Insert("INSERT INTO" +
        "  sys_pet  " +
        "VALUES(REPLACE(UUID(), '-', ''),#{p.name},#{p.type},#{p.createTime},#{p.adoptStatu},#{p.fostStatu},#{p.sex},#{p.imageUrl},#{p.createBy},#{p.updateBy},#{p.updateTime},#{p.remark},#{p.del_flag})")
    int savePet(@Param("p") SysPet sysPet);
}
