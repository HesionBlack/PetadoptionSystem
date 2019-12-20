package com.ruoyi.web.controller.user;/**
 * ClassName: UserController <br/>
 * Description: <br/>
 * date: 2019/12/18 下午2:08<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.config.Global;
import com.ruoyi.common.config.ServerConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.PetApply;
import com.ruoyi.system.domain.PetApplyView;
import com.ruoyi.system.domain.PetFostApply;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.service.IUserPetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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
    @Autowired
    private ServerConfig serverConfig;
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
    @GetMapping("/agreeFost/{id}")
    @ResponseBody
    public AjaxResult agreeFost(@PathVariable String id){
        String loginName = ShiroUtils.getLoginName();
        try {
            return toAjax(userPetService.agreeFost(id,loginName));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }


    @GetMapping("/myapply")
    public String myapply(ModelMap mmap){
        return prefix+"/myapply";
    }

    @PostMapping("/myapply")
    @ResponseBody
    public TableDataInfo myapplyPost() {
        Long userId = ShiroUtils.getUserId();
        List<PetApplyView> myapply = userPetService.myapply(userId);
        return getDataTable(myapply);
    }
@RequiresPermissions("user:pet:fost")
    @GetMapping("/applyfost")
    public String applyFost(){
          return prefix+"/applyfost";
    }

    @PostMapping("/applyfost")
    public AjaxResult fostapply(@RequestParam("file") MultipartFile file, PetFostApply petFostApply) throws IOException {
        String loginName = ShiroUtils.getLoginName();
        Long userId = ShiroUtils.getUserId();
        petFostApply.setCreateBy(loginName);
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, file);
        String url = serverConfig.getUrl() + fileName;
        petFostApply.setImageUrl(url);
        petFostApply.setUId(userId);
        try {
            return toAjax(userPetService.fostapply(petFostApply));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    @GetMapping("/myFostapply")
    public String myFostapply(ModelMap mmap){
        return prefix+"/myFostapply";
    }

    @PostMapping("/myFostapply")
    @ResponseBody
    public TableDataInfo myFostapplyPost() {
        Long userId = ShiroUtils.getUserId();
        List<PetApplyView> myapply = userPetService.myFostapplyPost(userId);
        return getDataTable(myapply);
    }


}
