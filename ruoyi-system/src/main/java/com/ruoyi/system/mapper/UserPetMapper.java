package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.PetApply;
import com.ruoyi.system.domain.SysPet;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: UserPetMapper <br/>
 * Description: <br/>
 * date: 2019/12/18 下午3:57<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface UserPetMapper {
    @Select({"<script> " +
            "SELECT * FROM sys_pet  where del_flag = '0'" +
            "<if test=\"name != null and name != ''\">" +
            "AND name LIKE \'%${name}%\'</if>" +
            "<if test=\"adoptStatu != null and adoptStatu != ''\"> AND adoptStatu=#{adoptStatu}</if> " +
            "<if test=\"type != null and type != ''\"> AND type LIKE \'%${type}%\'</if>" +
            "<if test=\"params.beginTime != null and params.beginTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &gt;= date_format(#{params.beginTime},'%y%m%d')</if>" +
            "<if test=\"params.endTime != null and params.endTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &lt;= date_format(#{params.endTime},'%y%m%d')</if>" +
            "</script>"})
    @Results(id = "SysPetResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysPet> selectPetList(SysPet sysPet);

    @Insert("INSERT INTO user_pet_apply VALUE(REPLACE(UUID(),\"-\",\"\"),#{a.uId},#{a.pId},#{a.confirm},#{a.createTime},#{a.updateTime},#{a.updateBy},#{a.del_flag},#{a.remark})")
    int applyAdopt(@Param("a") PetApply petApply);


    @Update("UPDATE user_pet_apply SET  update_time = #{a.updateTime},updateBy=#{a.updateBy}, confirm=#{a.confirm} WHERE pId=#{a.pId}")
    int agreeAdopt(@Param("a") PetApply petApply);

    @Update("UPDATE sys_pet SET  update_time = #{a.updateTime},updateBy=#{a.updateBy}, adoptStatu=#{a.confirm} WHERE id=#{a.pId} ")
    int setPetAdoptStatus(@Param("a") PetApply petApply);
}
