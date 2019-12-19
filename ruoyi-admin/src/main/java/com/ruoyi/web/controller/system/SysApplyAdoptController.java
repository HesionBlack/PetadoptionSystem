package com.ruoyi.web.controller.system;/**
 * ClassName: SysApplyAdoptController <br/>
 * Description: <br/>
 * date: 2019/12/19 上午11:01<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.SysAdoptView;
import com.ruoyi.system.service.IApplyAdoptService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-19 11:01
 **/
@Controller
@RequestMapping("/system/applyAdopt")
public class SysApplyAdoptController extends BaseController {
    String prefix = "system/pet/applyAdopt";

@Autowired
IApplyAdoptService applyAdoptService;
    @RequiresPermissions("system:adopt:view")
    @GetMapping()
    public String user() {
        return prefix + "/applyAdopt";
    }

    @RequiresPermissions("system:adopt:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysAdoptView sysAdoptView) {
        startPage();
        List<SysAdoptView> list = applyAdoptService.selectAdpotList(sysAdoptView);
        return getDataTable(list);
    }
}
