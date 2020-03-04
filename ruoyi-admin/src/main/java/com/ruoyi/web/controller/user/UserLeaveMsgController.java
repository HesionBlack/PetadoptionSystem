package com.ruoyi.web.controller.user;/**
 * ClassName: UseLeaveMsgController <br/>
 * Description: <br/>
 * date: 2019/12/20 下午1:32<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.UserLeaveMsg;
import com.ruoyi.system.service.IUserLeaveMsgService;
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
 * @create: 2019-12-20 13:32
 **/
@Controller
@RequestMapping("/user/leaveMsg")
public class UserLeaveMsgController extends BaseController {
    String prefix = "user/leaveMsg";
    @Autowired
    IUserLeaveMsgService userLeaveMsgService;

    @GetMapping()
    public String leaveMsg() {
        return prefix + "/leaveMsg";
    }

    @RequiresPermissions("user:leaveMsg:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list() {
        startPage();
        Long userId = ShiroUtils.getUserId();
        List<UserLeaveMsg> list = userLeaveMsgService.selectLeaveMsgByuserId(userId);
        return getDataTable(list);
    }

    @GetMapping("/leave")
    public String leave() {
        return prefix+"/leave";
    }

    @PostMapping("/leave")
    @ResponseBody
    public AjaxResult leavePost(UserLeaveMsg userLeaveMsg) {
        Long userId = ShiroUtils.getUserId();
        userLeaveMsg.setUId(userId);
        try {
            return toAjax(userLeaveMsgService.leave(userLeaveMsg));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
