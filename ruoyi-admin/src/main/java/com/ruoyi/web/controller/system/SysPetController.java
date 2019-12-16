package com.ruoyi.web.controller.system;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.SysPet;
import com.ruoyi.system.service.ISysPetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 用户信息
 * 
 * @author ruoyi
 */
@Controller
@RequestMapping("/system/pet")
public class SysPetController extends BaseController
{
    private String prefix = "system/pet";
    @Autowired
    private ISysPetService petService;


    @RequiresPermissions("system:user:view")
    @GetMapping()
    public String user()
    {
        return prefix + "/pet";
    }

    @RequiresPermissions("system:pet:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysPet sysPet)
    {
        startPage();
        List<SysPet> list = petService.selectPetList(sysPet);
        return getDataTable(list);
    }
}