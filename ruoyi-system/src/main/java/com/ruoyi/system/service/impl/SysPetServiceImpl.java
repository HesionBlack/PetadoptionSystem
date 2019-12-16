package com.ruoyi.system.service.impl;/**
 * ClassName: SysPetServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/16 下午2:24<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.mapper.SysPetMapper;
import com.ruoyi.system.service.ISysPetService;
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
}
