package ucl.group.talentManageSystem.api.service;

import ucl.group.talentManageSystem.api.controller.form.talentForm.TalentPorjectAddForm;
import ucl.group.talentManageSystem.api.db.pojo.BasicEngineerEntity;
import ucl.group.talentManageSystem.api.db.pojo.BasicProjectInfoEntity;
import ucl.group.talentManageSystem.api.db.pojo.RelatedTalentProject;

import java.util.List;

public interface ProjectInfoService {

    public int add(TalentPorjectAddForm talentPorjectAddForm);
    public int edit(TalentPorjectAddForm form);
    public int remove(int[] projectIds);
    public int addRelated(RelatedTalentProject relatedTalentProject);
}
