package ucl.group.talentManageSystem.api.service;

import ucl.group.talentManageSystem.api.db.pojo.BasicProjectInfoEntity;
import ucl.group.talentManageSystem.api.db.pojo.DictDataEntity;

import java.util.List;

public interface ProjectService {

    public List<BasicProjectInfoEntity> searchByTalentId(int talentId);
}
