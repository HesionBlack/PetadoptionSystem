package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.config.Global;
import com.ruoyi.common.config.ServerConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysDonateVIew;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.service.ISysPetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 宠物信息
 *
 * @author hesion
 */
@Controller
@RequestMapping("/system/pet")
public class SysPetController extends BaseController {
    private String prefix = "system/pet";
    @Autowired
    private ISysPetService petService;
    @Autowired
    private ServerConfig serverConfig;

    /**
     * @return java.lang.String
     * @Author hst
     * @Description //TODO 宠物信息页面跳转接口
     * @Date 上午8:38 2019/12/21
     * @Param []
     **/
    @RequiresPermissions("system:pet:view")
    @GetMapping()
    public String user() {
        return prefix + "/pet";
    }

    /**
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @Author hst
     * @Description //TODO 宠物信息数据请求接口
     * @Date 上午8:38 2019/12/21
     * @Param [sysPet]
     **/
    @RequiresPermissions("system:pet:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysPet sysPet) {
        startPage();
        List<SysPet> list = petService.selectPetList(sysPet);
        return getDataTable(list);
    }

    /**
     * 展示图片
     */
    @GetMapping("/showImage/{id}")
    public String authDataScope(@PathVariable("id") String id, ModelMap mmap) {
        mmap.put("imageUrl", petService.findImageUrl(id));
        return prefix + "/showImage";
    }


    /**
     * 新增宠物页面跳转接口
     */
    @GetMapping("/add")
    @RequiresPermissions("system:pet:add")
    public String add(ModelMap mmap) {
        return prefix + "/add";
    }

    /**
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @Author hst
     * @Description //TODO 新增宠物页面请求接口
     * @Date 上午8:40 2019/12/21
     * @Param [file, sysPet]
     **/
    @RequiresPermissions("system:pet:add")
    @Log(title = "宠物管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestParam("file") MultipartFile file, @Validated SysPet sysPet) throws IOException {
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, file);
        String url = serverConfig.getUrl() + fileName;
//        String urlBase = serverConfig.getUrl() + fileName;
//        String url = urlBase.substring(urlBase.indexOf('/'));
        sysPet.setCreateBy(ShiroUtils.getLoginName());
        sysPet.setCreateTime(new Date());
        sysPet.setAdoptStatu(0);
        sysPet.setImageUrl(url);
        sysPet.setDel_flag(0);

        int result = petService.savePet(sysPet);
        if (result > 0) {
            return success();
        }
        return error();
    }

    /**
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @Author hst
     * @Description //TODO 宠物信息删除接口
     * @Date 上午8:40 2019/12/21
     * @Param [ids]   传入宠物id数组 支持批量删除
     **/
    @RequiresPermissions("system:pet:remove")
    @Log(title = "宠物管理", businessType = BusinessType.INSERT)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(petService.deletePetByIds(ids));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 修改宠物信息页面跳转接口
     */
    @GetMapping("/edit/{petId}")
    public String edit(@PathVariable("petId") String petId, ModelMap mmap) {
        mmap.put("pet", petService.selectPetById(petId));
        return prefix + "/edit";
    }

    /**
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @Author hst
     * @Description //TODO 修改宠物信息页面数据提交接口
     * @Date 上午8:41 2019/12/21
     * @Param [file, sysPet]
     **/
    @RequiresPermissions("system:pet:edit")
    @Log(title = "宠物管理", businessType = BusinessType.INSERT)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestParam("file") @Nullable MultipartFile file, @Validated SysPet sysPet) throws IOException {
        if (file!=null) {
            // 上传文件路径
            String filePath = Global.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            sysPet.setImageUrl(url);
        }else{
            String imageUrl = petService.findImageUrl(sysPet.getId());
            sysPet.setImageUrl(imageUrl);
        }
        sysPet.setCreateBy(ShiroUtils.getLoginName());
        sysPet.setCreateTime(new Date());
        sysPet.setAdoptStatu(0);
        sysPet.setDel_flag(0);
        sysPet.setUpdateBy(ShiroUtils.getLoginName());
        sysPet.setUpdateTime(new Date());
        int result = petService.editPet(sysPet);
        if (result > 0) {
            return success();
        }
        return error();
    }

    @GetMapping("/donate")
    public String donate() {
        return prefix + "/donate/donate";
    }

    /**
     * @return com.ruoyi.common.core.page.TableDataInfo
     * @Author hst
     * @Description //TODO 宠物捐赠信数据请求接口
     * @Date 上午8:38 2019/12/21
     * @Param [sysPet]
     **/
    @RequiresPermissions("system:pet:list")
    @PostMapping("/donateList")
    @ResponseBody
    public TableDataInfo donateList(SysDonateVIew sysDonateVIew) {
        startPage();
        List<SysDonateVIew> list = petService.selectDonateList(sysDonateVIew);
        return getDataTable(list);
    }

    @GetMapping("/agreeDonate/{id}")
    @ResponseBody
    public AjaxResult agreeDonate(@PathVariable String id) {
        String loginName = ShiroUtils.getLoginName();
        try {
            return toAjax(petService.agreeDonate(id, loginName));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }


}