package com.ruoyi.system.service.impl;/**
 * ClassName: UserPetServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/18 下午3:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.*;
import com.ruoyi.system.mapper.SysPetMapper;
import com.ruoyi.system.mapper.UserPetMapper;
import com.ruoyi.system.service.IUserPetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-18 15:56
 **/
@Service
public class UserPetServiceImpl implements IUserPetService {
    @Autowired
    UserPetMapper userPetMapper;
    @Autowired
    SysPetMapper sysPetMapper;
    @Override
    public List<SysPet> selectPetList(SysPet sysPet) {
        return userPetMapper.selectPetList(sysPet);
    }

    @Override
    public int applyAdopt(String pid, Long userId,String remark) {
        PetApply petApply = new PetApply();
        petApply.setUId(userId);
        petApply.setPId(pid);
        petApply.setConfirm(0);
        petApply.setCreateTime(new Date());
        petApply.setDel_flag("0");
        petApply.setRemark(remark);
        return userPetMapper.applyAdopt(petApply);
    }

    @Override
    public int agreeAdopt(String pId, String loginName) {
        PetApply petApply = new PetApply();
        petApply.setConfirm(1);
        petApply.setUpdateBy(loginName);
        petApply.setUpdateTime(new Date());
        petApply.setPId(pId);
        int result = userPetMapper.agreeAdopt(petApply);
        if(result > 0){
            userPetMapper.setPetAdoptStatus(petApply);
            return result;
        }else{
           return 0;
        }
    }

    @Override
    public List<PetApplyView> myapply(Long userId) {
        return userPetMapper.myapply(userId);
    }

    @Override
    public int fostapply(PetFostApply petFostApply) {
        petFostApply.setCreateTime(new Date());
        petFostApply.setDel_flag(0);
        petFostApply.setConfirm(0);
        return userPetMapper.fostapply(petFostApply) ;
    }

    @Override
    public List<PetApplyView> myFostapplyPost(Long userId) {
        return userPetMapper.myFostapplyPost(userId);
    }

    @Override
    public int agreeFost(String id, String loginName) {
        PetFostApply petFostApply = new PetFostApply();
        petFostApply.setConfirm(1);
        petFostApply.setUpdateBy(loginName);
        petFostApply.setUpdateTime(new Date());
        petFostApply.setId(id);
        int result = userPetMapper.agreeFost(petFostApply);
        if(result > 0){
            PetFostApply fostPet = userPetMapper.getFostPetById(id);
            SysPet sysPet = new SysPet();
            sysPet.setName(fostPet.getName());
            sysPet.setType(fostPet.getType());
            sysPet.setCreateTime(new Date());
            sysPet.setAdoptStatu(0);
            sysPet.setFostStatu(1);
            sysPet.setSex(fostPet.getSex());
            sysPet.setImageUrl(fostPet.getImageUrl());
            sysPet.setCreateBy(fostPet.getUpdateBy());
            sysPet.setUpdateBy(fostPet.getUpdateBy());
            sysPet.setUpdateTime(petFostApply.getUpdateTime());
            sysPet.setRemark(fostPet.getRemark());
            sysPet.setDel_flag(0);
            sysPetMapper.savePet(sysPet);
//            userPetMapper.PetInfoRecord(sysPet);
            return result;
        }else{
            return 0;
        }
    }

    @Override
    public int donate(UserDonate userDonate) {
        return userPetMapper.donate(userDonate);
    }
}
