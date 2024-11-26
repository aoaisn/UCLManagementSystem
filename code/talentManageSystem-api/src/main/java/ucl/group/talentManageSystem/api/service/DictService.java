package ucl.group.talentManageSystem.api.service;

import org.apache.ibatis.annotations.Param;
import ucl.group.talentManageSystem.api.common.PageUtils;
import ucl.group.talentManageSystem.api.common.R;
import ucl.group.talentManageSystem.api.db.pojo.DictDataEntity;
import ucl.group.talentManageSystem.api.db.pojo.LabelEntity;

import java.util.List;
import java.util.Map;

public interface DictService {

    public List<DictDataEntity> searchByType(String type);
    public void loadingDictCache();
    public void clearDictCache();
    public void resetDictCache();
    /**
     * 获取名称
     */
    public String  getDictName(String  type,String lang,String value);
}
