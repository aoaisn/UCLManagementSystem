package ucl.group.excelSystem.api.db.pojo;

import lombok.Data;
import ucl.group.talentManageSystem.api.db.pojo.BasicEntity;

/**
 * 项目表实体类
 */
@Data
public class BasicProjectEntity extends BasicEntity {

    private Long projectId;
    private Long customerId;
    private String projectName;
    private String principal;
    private String  principalCompany;

}
