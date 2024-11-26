package ucl.group.excelSystem.api.controller.form;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DeleteProTechForm {

	@NotEmpty(message = "ids不能为空")
	private Long[] ids;

}
