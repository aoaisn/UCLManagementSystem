package ucl.group.excelSystem.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class DeleteCustomerForm {

    @NotEmpty(message = "用户customerIds不能为空")
    private Long[] customerIds;
}
