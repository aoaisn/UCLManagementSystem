package ucl.group.talentManageSystem.api.controller;


import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.hutool.core.bean.BeanUtil;
import org.springframework.web.bind.annotation.*;
import ucl.group.talentManageSystem.api.common.R;
import ucl.group.talentManageSystem.api.common.annotation.Log;
import ucl.group.talentManageSystem.api.common.enums.BusinessType;
import ucl.group.talentManageSystem.api.controller.form.BusinessAddForm;
import ucl.group.talentManageSystem.api.controller.form.BusinessUpdateForm;
import ucl.group.talentManageSystem.api.controller.form.LabelTypeUpdateForm;
import ucl.group.talentManageSystem.api.db.pojo.BusinessEntity;
import ucl.group.talentManageSystem.api.service.BusinessService;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;

@RestController
@RequestMapping("/api/v1/business")
public class BusinessController {

    @Resource
    BusinessService businessService;

    @GetMapping
    @SaCheckLogin
    public R searchAll(){
        ArrayList<HashMap> list = businessService.BusinessSelect();
        return R.ok().put("result",list);
    }

    @PostMapping
    @SaCheckLogin
    @Log(title = "行业管理",businessType = BusinessType.INSERT)
    public R addBusiness(@RequestBody @Valid BusinessAddForm form){
        BusinessEntity entity = BeanUtil.toBean(form, BusinessEntity.class);
        businessService.BusinessInsert(entity);
        return R.ok();
    }

    @PutMapping
    @SaCheckLogin
    @Log(title = "行业管理", businessType = BusinessType.UPDATE)
    public R modifyBusiness(@RequestBody @Valid BusinessUpdateForm form) {
        BusinessEntity entity = BeanUtil.toBean(form, BusinessEntity.class);
        businessService.BusinessUpdate(entity);
        return R.ok();
    }

}
