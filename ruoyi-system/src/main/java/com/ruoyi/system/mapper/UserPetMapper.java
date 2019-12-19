package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysPet;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

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
            "SELECT * FROM sys_pet  where del_flag = '0' AND fostStatu=0" +
            "<if test=\"name != null and name != ''\">" +
            "AND name=#{name}</if>" +
            "<if test=\"adoptStatu != null and adoptStatu != ''\"> AND adoptStatu=#{adoptStatu}</if> " +
            "<if test=\"type != null and type != ''\"> AND type=#{type}</if>" +
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

    int applyAdopt(String id, Long userId);
}
