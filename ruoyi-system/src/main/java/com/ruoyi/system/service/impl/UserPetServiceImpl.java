package com.ruoyi.system.service.impl;/**
 * ClassName: UserPetServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/18 下午3:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.mapper.UserPetMapper;
import com.ruoyi.system.service.IUserPetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    @Override
    public List<SysPet> selectPetList(SysPet sysPet) {
        return userPetMapper.selectPetList(sysPet);
    }

    @Override
    public int applyAdopt(String id, Long userId) {
        return userPetMapper.applyAdopt(id,userId);
    }
}
