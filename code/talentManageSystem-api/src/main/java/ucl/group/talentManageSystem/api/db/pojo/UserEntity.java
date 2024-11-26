package ucl.group.talentManageSystem.api.db.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
public class UserEntity extends BasicEntity {

    private int userId;

    private String name;

    private String pseudonym;

    private String account;

    private String password;

    private String email;

    private String phone;

    private String code;

    private String type;

}
