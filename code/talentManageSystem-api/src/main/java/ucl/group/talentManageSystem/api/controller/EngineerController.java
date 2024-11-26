package ucl.group.talentManageSystem.api.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ucl.group.talentManageSystem.api.common.R;
import ucl.group.talentManageSystem.api.common.constants.CacheConstants;
import ucl.group.talentManageSystem.api.common.utils.SecurityUtils;
import ucl.group.talentManageSystem.api.controller.form.talentForm.EngineerForm;
import ucl.group.talentManageSystem.api.db.pojo.BasicEngineerEntity;
import ucl.group.talentManageSystem.api.service.DictService;
import ucl.group.talentManageSystem.api.service.EngineerService;
import ucl.group.talentManageSystem.api.service.RedisService;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/engineer")
public class EngineerController {

    @Autowired
    private EngineerService engineerService;
    @Autowired
    private RedisService redisService;
    @GetMapping
    @SaCheckLogin
    public R getAllEngineer() {
        List<BasicEngineerEntity> engineerEntities = engineerService.searchAllEngineer();
        String userId = SecurityUtils.getUserIdAsString();
        String langName = redisService.getCacheObject(redisService.getLangCacheKey(userId));
        List<EngineerForm> engineerForms=new ArrayList<>();
        if (langName.equals(CacheConstants.Language_CH)) {
            engineerEntities.forEach(
                    temp->{
                        engineerForms.add(new EngineerForm(temp.getEngineerId(),temp.getEngineerName()));
                    }
            );
        }else{
            engineerEntities.forEach(
                    temp->{
                        engineerForms.add(new EngineerForm(temp.getEngineerId(),temp.getEngineerNameJap()));
                    }
            );
        }
        return R.ok().put("result", engineerForms);
    }
}
