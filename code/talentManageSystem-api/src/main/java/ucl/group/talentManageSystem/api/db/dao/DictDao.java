package ucl.group.talentManageSystem.api.db.dao;

import org.apache.ibatis.annotations.Param;
import ucl.group.talentManageSystem.api.db.pojo.DictDataEntity;
import ucl.group.talentManageSystem.api.db.pojo.LabelEntity;
import ucl.group.talentManageSystem.api.db.pojo.RelatedLabelTypeEntity;
import ucl.group.talentManageSystem.api.db.pojo.bo.DictNameAndJap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface DictDao {
    /**
     * 根据字典类型获取字典数据
     * @param type
     * @return
     */
    public List<DictDataEntity> searchByType(@Param("type") String type);

    public List<String> searchAllDictType();

}
