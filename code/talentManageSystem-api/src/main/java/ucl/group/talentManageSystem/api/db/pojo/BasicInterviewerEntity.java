package ucl.group.talentManageSystem.api.db.pojo;

import lombok.Data;

@Data
public class BasicInterviewerEntity extends BasicEntity{
    private int interviewerId;
    private String name;
    private String pseudonym;
    private String type;



}
