package com.ruoyi.web.controller.system;/**
 * ClassName: SysLeaveMsgController <br/>
 * Description: <br/>
 * date: 2019/12/20 下午4:30<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.domain.UserLeaveMsg;
import com.ruoyi.system.service.ISysLeaveMsgService;
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
 * @create: 2019-12-20 16:30
 **/
@Controller
@RequestMapping("system/leaveMsg")
public class SysLeaveMsgController extends BaseController {
    private String prefix = "system/leaveMsg";
    @Autowired
    ISysLeaveMsgService sysLeaveMsgService;
    @RequiresPermissions("system:pet:view")
    @GetMapping()
    public String user() {
        return prefix + "/leaveMsg";
    }

    @RequiresPermissions("system:pet:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UserLeaveMsg userLeaveMsg) {
        startPage();
        List<UserLeaveMsg> list = sysLeaveMsgService.selectLeaveMsgList(userLeaveMsg);
        return getDataTable(list);
    }

}
