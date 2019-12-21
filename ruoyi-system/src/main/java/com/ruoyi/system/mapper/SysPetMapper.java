package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.PetFostApply;
import com.ruoyi.system.domain.SysDonateVIew;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserDonate;
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
//    @Select("SELECT * FROM sys_pet where sysPet.del_flag = '0'")
    @Results(id = "SysPetResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysPet> selectPetList(SysPet sysPet);

    @Select("SELECT  ImageUrl  FROM sys_pet WHERE id=#{id}")
    String findImageUrl(String id);

    @Insert("INSERT INTO" +
            "  sys_pet  " +
            "VALUES(REPLACE(UUID(), '-', ''),#{p.name},#{p.type},#{p.createTime},#{p.adoptStatu},#{p.fostStatu},#{p.sex},#{p.imageUrl},#{p.createBy},#{p.updateBy},#{p.updateTime},#{p.remark},#{p.del_flag})")
    int savePet(@Param("p") SysPet sysPet);

    @Update("<script>" +
            "update sys_pet set del_flag = '2' where id in" +
            "<foreach collection=\"ids\" item=\"id\" open=\"(\" separator=\",\" close=\")\">" +
            "#{id}" +
            "</foreach> " +
            "</script>")
    int deletePetByIds(@Param("ids") String[] ids);

    @Select("SELECT * FROM sys_pet WHERE id = #{id}")
    SysPet selectPetById(String id);

    @Update("UPDATE sys_pet SET  name=#{p.name},type=#{p.type}, adoptStatu=#{p.adoptStatu},fostStatu=#{p.fostStatu},sex=#{p.sex},imageUrl=#{p.imageUrl},updateBy=#{p.updateBy},update_time=#{p.updateTime},remark=#{p.remark} WHERE id=#{p.id} ")
    int editPet(@Param("p") SysPet sysPet);
    @Select("SELECT * FROM v_pet_SystemdonateView WHERE del_flag=\'0\'")
    @Results(id = "v_pet_SystemdonateView",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysDonateVIew> selectDonateList(SysDonateVIew sysDonateVIew);
    @Update("UPDATE user_pet_donate SET  update_time = #{d.updateTime},updateBy=#{d.updateBy}, confirm=#{d.confirm} WHERE id=#{d.id}")
    int agreeFost(@Param("d") UserDonate userDonate);

    @Select("SELECT * FROM user_pet_donate  WHERE id=#{id}")
    @Results(id = "user_pet_donate",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    UserDonate getDonateById(String id);
}
