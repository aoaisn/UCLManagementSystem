package ucl.group.talentManageSystem.api.db.pojo;

import lombok.Data;

@Data
public class BusinessEntity extends BasicEntity{
    private int businessId;

    private String businessName;
}
