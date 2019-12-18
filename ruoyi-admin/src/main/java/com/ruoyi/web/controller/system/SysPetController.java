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
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.service.ISysPetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 用户信息
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/system/pet")
public class SysPetController extends BaseController {
    private String prefix = "system/pet";
    @Autowired
    private ISysPetService petService;
    @Autowired
    private ServerConfig serverConfig;

    @RequiresPermissions("system:pet:view")
    @GetMapping()
    public String user() {
        return prefix + "/pet";
    }

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
     * 新增用户
     */
    @GetMapping("/add")
    @RequiresPermissions("system:pet:add")
    public String add(ModelMap mmap) {
        return prefix + "/add";
    }

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
     * 修改角色
     */
    @GetMapping("/edit/{petId}")
    public String edit(@PathVariable("petId") String petId, ModelMap mmap) {
        mmap.put("pet", petService.selectPetById(petId));
        return prefix + "/edit";
    }

    @RequiresPermissions("system:pet:edit")
    @Log(title = "宠物管理", businessType = BusinessType.INSERT)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestParam("file") MultipartFile file, @Validated SysPet sysPet) throws IOException {
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, file);
        String url = serverConfig.getUrl() + fileName;
        sysPet.setCreateBy(ShiroUtils.getLoginName());
        sysPet.setCreateTime(new Date());
        sysPet.setAdoptStatu(0);
        sysPet.setImageUrl(url);
        sysPet.setDel_flag(0);
        sysPet.setUpdateBy(ShiroUtils.getLoginName());
        sysPet.setUpdateTime(new Date());
        int result = petService.editPet(sysPet);
        if (result > 0) {
            return success();
        }
        return error();
    }

}