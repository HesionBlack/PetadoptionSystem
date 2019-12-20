package com.ruoyi.web.controller.system;/**
 * ClassName: SysApplyFostController <br/>
 * Description: <br/>
 * date: 2019/12/20 上午11:16<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.SysAdoptView;
import com.ruoyi.system.domain.SysFostView;
import com.ruoyi.system.service.IApplyFostService;
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
 * @description:
 * @author: hesion
 * @create: 2019-12-20 11:16
 **/
@Controller
@RequestMapping("/system/applyFost")
public class SysApplyFostController extends BaseController {
    String prefix = "system/pet/applyFost";
    @Autowired
    IApplyFostService applyFostService;

    @RequiresPermissions("system:adopt:view")
    @GetMapping()
    public String user() {
        return prefix + "/applyFost";
    }

    @RequiresPermissions("system:adopt:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysFostView sysFostView) {
        startPage();
        List<SysFostView> list = applyFostService.selectFostList(sysFostView);
        return getDataTable(list);
    }

}
