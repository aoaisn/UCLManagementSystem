package ucl.group.excelSystem.api.service;
import ucl.group.excelSystem.api.db.pojo.BasicProjectEntity;
import ucl.group.talentManageSystem.api.common.PageUtils;

import java.util.Map;

public interface ProjectV2Service {

    public void insertProject(BasicProjectEntity basicProjectEntity);

    public void updateProject(BasicProjectEntity basicProjectEntity);

    public void deleteProject(Long[] projectIds);

    public PageUtils selectProjectByPage(Map param);
}
