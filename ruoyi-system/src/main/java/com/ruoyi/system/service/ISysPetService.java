package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysPet;

import java.util.List;

/**
 * ClassName: IPetService <br/>
 * Description: <br/>
 * date: 2019/12/16 下午2:23<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ISysPetService {
    List<SysPet> selectPetList(SysPet sysPet);

    String  findImageUrl(String id);
}
