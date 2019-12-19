package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysAdoptView;
import com.ruoyi.system.domain.SysPet;

import java.util.List;

/**
 * ClassName: IApplyAdoptService <br/>
 * Description: <br/>
 * date: 2019/12/19 上午11:30<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IApplyAdoptService {
    List<SysAdoptView> selectAdpotList(SysAdoptView sysAdoptView);
}
