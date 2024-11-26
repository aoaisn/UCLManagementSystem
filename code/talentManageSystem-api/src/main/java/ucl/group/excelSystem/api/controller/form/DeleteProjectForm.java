package ucl.group.excelSystem.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
@Data
public class DeleteProjectForm {

    @NotEmpty(message = "项目Id不能为空")
    private Long[] projectIds;
}
