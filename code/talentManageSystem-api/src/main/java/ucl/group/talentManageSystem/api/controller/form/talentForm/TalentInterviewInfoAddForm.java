package ucl.group.talentManageSystem.api.controller.form.talentForm;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.hibernate.validator.constraints.Range;

import java.text.DateFormat;
import java.util.Date;

@Data
public class TalentInterviewInfoAddForm {
    private Integer talentId;
    private Integer interId;

    private Date busDate;
    /**
     * 这里是主键id
     */
    private Integer busInterviewerId;
    private String busEvaluation;

    private Date techDate;
    /**
     * 这里是主键id
     */
    private Integer techInterviewerId;
    private String techEvaluation;
    /**
     * 采用标志
     * 1采用 2未采用 3 待定
     */
    private String status;
    private String  remark;

    private String picture;
}
