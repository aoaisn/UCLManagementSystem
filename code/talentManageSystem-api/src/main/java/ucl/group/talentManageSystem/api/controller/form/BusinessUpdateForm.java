package ucl.group.talentManageSystem.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
public class BusinessUpdateForm  extends BasicUnnecessaryForm {
    @NotNull(message = "businessId的值不能为空")
    private int businessId;

    @NotBlank(message = "businessName的值不能为空")
    private String businessName;

    private String remark;
}
