package ucl.group.talentManageSystem.api.service;

import org.springframework.stereotype.Service;
import ucl.group.talentManageSystem.api.db.pojo.UserEntity;

import java.util.Map;

public interface UserService {
    public UserEntity login(Map param);
    public Boolean judgeExist(String email, int systemCode);
}
