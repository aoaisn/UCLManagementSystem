package ucl.group.excelSystem.api.controller.form;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;


@Data
public class InsertCustomerForm {

    @NotNull(message = "用户名不能为空")
    @JsonProperty("customerName")
    private String customerName;

    @JsonProperty("remark")
    private String remark;

}
