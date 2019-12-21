package com.ruoyi.system.service.impl;/**
 * ClassName: SysPetServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/16 下午2:24<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.system.domain.PetFostApply;
import com.ruoyi.system.domain.SysDonateVIew;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserDonate;
import com.ruoyi.system.mapper.SysPetMapper;
import com.ruoyi.system.service.ISysPetService;
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
 * @create: 2019-12-16 14:24
 **/
@Service
public class SysPetServiceImpl implements ISysPetService {
    @Autowired
    SysPetMapper sysPetMapper;

    @Override
    public List<SysPet> selectPetList(SysPet sysPet) {
        return sysPetMapper.selectPetList(sysPet);
    }

    @Override

    public String findImageUrl(String id) {
        return sysPetMapper.findImageUrl(id);
    }

    @Override
    public int savePet(SysPet sysPet) {
        return sysPetMapper.savePet(sysPet);
    }

    @Override
    public int deletePetByIds(String ids) {
        String[] id = ids.split(",");
        return sysPetMapper.deletePetByIds(id);
    }

    @Override
    public SysPet selectPetById(String petId) {
        return sysPetMapper.selectPetById(petId);
    }

    @Override
    public int editPet(SysPet sysPet) {
        return sysPetMapper.editPet(sysPet);
    }

    @Override
    public List<SysDonateVIew> selectDonateList(SysDonateVIew sysDonateVIew) {
        return sysPetMapper.selectDonateList(sysDonateVIew);
    }

    @Override
    public int agreeDonate(String id, String loginName) {
        UserDonate userDonate = new UserDonate();
        userDonate.setConfirm(1);
        userDonate.setUpdateBy(loginName);
        userDonate.setUpdateTime(new Date());
        userDonate.setId(id);
        int result = sysPetMapper.agreeFost(userDonate);
        if(result > 0){
            UserDonate donate= sysPetMapper.getDonateById(id);
            SysPet sysPet = new SysPet();
            sysPet.setName(donate.getName());
            sysPet.setType(donate.getType());
            sysPet.setCreateTime(new Date());
            sysPet.setAdoptStatu(0);
            sysPet.setFostStatu(0);
            sysPet.setSex(donate.getSex());
            sysPet.setImageUrl(donate.getImageUrl());
            sysPet.setCreateBy(donate.getUpdateBy());
            sysPet.setUpdateBy(donate.getUpdateBy());
            sysPet.setUpdateTime(userDonate.getUpdateTime());
            sysPet.setRemark(donate.getRemark());
            sysPet.setDel_flag(0);
            sysPetMapper.savePet(sysPet);
//            userPetMapper.PetInfoRecord(sysPet);
            return result;
        }else{
            return 0;
        }
    }
}
