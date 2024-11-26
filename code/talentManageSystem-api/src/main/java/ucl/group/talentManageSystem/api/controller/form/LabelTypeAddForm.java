package ucl.group.talentManageSystem.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class LabelTypeAddForm extends BasicUnnecessaryForm {

    @NotBlank(message = "typeName的值不能为空")
    private String typeName;

    @NotBlank(message = "typeNameJap的值不能为空")
    private String typeNameJap;

    private String remark;
}
