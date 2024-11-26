package ucl.group.talentManageSystem.api.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ucl.group.talentManageSystem.api.db.dao.DictDao;
import ucl.group.talentManageSystem.api.db.dao.ProjectInfoDao;
import ucl.group.talentManageSystem.api.db.pojo.BasicProjectInfoEntity;
import ucl.group.talentManageSystem.api.db.pojo.DictDataEntity;
import ucl.group.talentManageSystem.api.exception.ServiceException;
import ucl.group.talentManageSystem.api.service.DictService;
import ucl.group.talentManageSystem.api.service.ProjectService;

import javax.annotation.Resource;
import java.util.List;

@Service
@Slf4j
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectInfoDao projectInfoDao;

    @Override
    public List<BasicProjectInfoEntity> searchByTalentId(int talentId){
        List<BasicProjectInfoEntity> projectInfoList = projectInfoDao.searchByTalentId(talentId);
        return projectInfoList;
    }
}