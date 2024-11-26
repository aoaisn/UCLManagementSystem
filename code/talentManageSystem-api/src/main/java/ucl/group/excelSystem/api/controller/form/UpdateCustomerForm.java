package ucl.group.excelSystem.api.controller.form;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;


@Data
public class UpdateCustomerForm {
    @NotNull(message="用户ID不能为空")
    private Long customerId;

    @NotNull(message = "用户名不能为空")
    @JsonProperty("customerName")
    private String customerName;

    @JsonProperty("remark")
    private String remark;

}
