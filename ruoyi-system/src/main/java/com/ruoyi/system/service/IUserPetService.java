package com.ruoyi.system.service;

import com.ruoyi.system.domain.*;

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

    int applyAdopt(String id, Long userId,String remark);

    int agreeAdopt(String pId, String loginName);

    List<PetApplyView> myapply(Long userId);

    int fostapply(PetFostApply petFostApply);

    List<PetApplyView> myFostapplyPost(Long userId);

    int agreeFost(String id, String loginName);

    int donate(UserDonate userDonate);
}
