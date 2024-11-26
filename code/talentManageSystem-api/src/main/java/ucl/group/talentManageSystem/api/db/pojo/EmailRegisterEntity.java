package ucl.group.talentManageSystem.api.db.pojo;

import lombok.Data;
import org.springframework.messaging.MessagingException;

@Data
public class EmailRegisterEntity {
	//查询用户
	String searchname;
	String username;
	String usertype;
	//当前用户
	String currentname;
}
