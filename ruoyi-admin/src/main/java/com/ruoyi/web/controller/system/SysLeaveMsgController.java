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
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysLeaveMsgReply;
import com.ruoyi.system.domain.UserLeaveMsg;
import com.ruoyi.system.service.ISysLeaveMsgService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
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

    @GetMapping("/reply/{id}")
    public String replay(@PathVariable String id, ModelMap mmap, Model model) {
        UserLeaveMsg leaveMsg = sysLeaveMsgService.findMsgById(id);
        List<SysLeaveMsgReply> replyMsg = sysLeaveMsgService.findReplyById(id);
        model.addAttribute("replyMsg", replyMsg);
        mmap.put("leaveMsg", leaveMsg);
        return prefix + "/replay";
    }

    @PostMapping("/reply")
    @ResponseBody
    public AjaxResult replayPost(String id, String msg) {
        String loginName = ShiroUtils.getLoginName();
        Long userId = ShiroUtils.getUserId();
        SysLeaveMsgReply sysLeaveMsgReply = new SysLeaveMsgReply();
        sysLeaveMsgReply.setMsgId(id);
        sysLeaveMsgReply.setMsg(msg);
        sysLeaveMsgReply.setReplyTime(new Date());
        sysLeaveMsgReply.setReplayerId(userId);
        sysLeaveMsgReply.setReplayName(loginName);
        try {
            int result = sysLeaveMsgService.replyMsg(sysLeaveMsgReply);
            if (result > 0) {
                return toAjax(sysLeaveMsgService.setReplyStatu(id));
            }
            return error("回复失败,请重试!");
        } catch (Exception e) {
            return error(e.getMessage());
        }

    }
}
