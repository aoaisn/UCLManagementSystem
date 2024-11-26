package ucl.group.excelSystem.api.controller.form;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;


public class DateForm {
    @JsonFormat(pattern = "yyyy-MM")
    @NotEmpty(message = "dateStart内容不能为空")
    @Pattern(regexp = "^\\d{4}-(0[1-9]|1[0-2])$", message = "dateStart内容不正确")
    private String dateStart;

    @JsonFormat(pattern = "yyyy-MM")
    @NotEmpty(message = "dateEnd内容不能为空")
    @Pattern(regexp = "^\\d{4}-(0[1-9]|1[0-2])$", message = "dateEnd内容不正确")
    private String dateEnd;

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }
}
