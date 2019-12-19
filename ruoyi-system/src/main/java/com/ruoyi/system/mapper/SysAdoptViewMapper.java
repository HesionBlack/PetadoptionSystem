package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysAdoptView;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;


/**
 * ClassName: SysAdoptViewMapper <br/>
 * Description: <br/>
 * date: 2019/12/19 上午11:32<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface SysAdoptViewMapper {
//    @Select("<script>" +
//            "SELECT * FROM v_pet_applyadopt WHERE  1=1" +
//            "<if test" +
//            "</script>")
    @Select("SELECT * FROM v_pet_applyadopt WHERE del_flag=\'0\'")
    @Results(id = "SysPetAdoptResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysAdoptView> selectAdpotList(SysAdoptView sysAdoptView);
}
