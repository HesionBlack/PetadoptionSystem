package com.ruoyi.web.controller.user;/**
 * ClassName: UserController <br/>
 * Description: <br/>
 * date: 2019/12/18 下午2:08<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.service.IUserPetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-18 14:08
 **/
@Controller
@RequestMapping("/user/pet")
public class UserPetController extends BaseController {
      String prefix="user/pet";
    @Autowired
    private IUserPetService userPetService;
      @RequiresPermissions("user:pet:view")
      @GetMapping("/petInfo")
      public String petInfo() {
          return prefix + "/petInfo";
      }

    @RequiresPermissions("user:pet:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysPet sysPet) {
        startPage();
        List<SysPet> list = userPetService.selectPetList(sysPet);
        return getDataTable(list);
    }
@GetMapping("/applyAdopt/{id}")
public String applyPage(@PathVariable String id, ModelMap mmap){
          mmap.put("petid",id);
          return prefix+"/applyPage";
}


    @PostMapping("/applyAdopt/{id}")
    @ResponseBody
    public AjaxResult applyAdopt(@PathVariable  String id, String remark) {
        Long userId = ShiroUtils.getUserId();
        try {
            return toAjax(userPetService.applyAdopt(id,userId,remark));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    @GetMapping("/agreeAdopt/{pId}")
    @ResponseBody
    public AjaxResult agreeAdopt(@PathVariable String pId){
        String loginName = ShiroUtils.getLoginName();
        try {
            return toAjax(userPetService.agreeAdopt(pId,loginName));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
