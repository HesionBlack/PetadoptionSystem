package com.ruoyi.system.service.impl;/**
 * ClassName: ApplyAdoptServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/19 上午11:31<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysAdoptView;
import com.ruoyi.system.mapper.SysAdoptViewMapper;
import com.ruoyi.system.service.IApplyAdoptService;
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
 * @create: 2019-12-19 11:31
 **/
@Service
public class ApplyAdoptServiceImpl implements IApplyAdoptService {
    @Autowired
    SysAdoptViewMapper sysAdoptViewMapper;
    @Override
    public List<SysAdoptView> selectAdpotList(SysAdoptView sysAdoptView) {
        return sysAdoptViewMapper.selectAdpotList(sysAdoptView);
    }
}
