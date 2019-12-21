package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysDonateVIew;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserDonate;

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

    int savePet(SysPet sysPet);

    int deletePetByIds(String ids);

    SysPet selectPetById(String petId);

    int editPet(SysPet sysPet);

    List<SysDonateVIew> selectDonateList(SysDonateVIew sysDonateVIew);

    int agreeDonate(String id, String loginName);
}
