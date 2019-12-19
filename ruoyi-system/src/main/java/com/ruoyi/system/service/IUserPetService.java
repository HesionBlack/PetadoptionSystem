package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysPet;

import java.util.List;

/**
 * ClassName: IUserPetService <br/>
 * Description: <br/>
 * date: 2019/12/18 下午3:56<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IUserPetService {
    List<SysPet> selectPetList(SysPet sysPet);

    int applyAdopt(String id, Long userId);
}
