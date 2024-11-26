package ucl.group.talentManageSystem.api.db.pojo;

import lombok.Data;

@Data
public class LabelTypeEntity extends BasicEntity {

    private int typeId;

    private String typeName;

    private String typeNameJap;

    private int labelId;
}
