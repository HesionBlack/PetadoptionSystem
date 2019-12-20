package com.ruoyi.system.service.impl;/**
 * ClassName: ApplyFostServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/20 上午11:26<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysFostView;
import com.ruoyi.system.mapper.SysFostVIewMapper;
import com.ruoyi.system.service.IApplyFostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2019-12-20 11:26
 **/
@Service
public class ApplyFostServiceImpl implements IApplyFostService {
    @Autowired
    SysFostVIewMapper sysFostVIewMapper;

    @Override
    public List<SysFostView> selectFostList(SysFostView sysAdoptView) {
        return sysFostVIewMapper.selectFostList(sysAdoptView);
    }
}
