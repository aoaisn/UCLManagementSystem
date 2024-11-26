package ucl.group.talentManageSystem.api.db.pojo.bo;

/**
 * 存到redis中
 */
public class DictNameAndJap {
    private int dictDataId;
    /**
     * 排序
     */
    private int dictSort;
    /**
     * 中文描述
     */
    private String dictLabel;
    /**
     * 日文描述
     */
    private String dictLabelJap;
    /**
     * 字典值
     */
    private String dictValue;
    /**
     * 字典类型，即前端查询的type字段
     */
    private String dictType;
}
