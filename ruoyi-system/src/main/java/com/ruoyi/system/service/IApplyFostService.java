package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysAdoptView;
import com.ruoyi.system.domain.SysFostView;

import java.util.List;

/**
 * ClassName: IApplyFostService <br/>
 * Description: <br/>
 * date: 2019/12/20 上午11:21<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IApplyFostService {

    List<SysFostView> selectFostList(SysFostView sysAdoptView);
}
