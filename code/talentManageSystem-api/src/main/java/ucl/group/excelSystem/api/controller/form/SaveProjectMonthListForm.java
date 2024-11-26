package ucl.group.excelSystem.api.controller.form;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ucl.group.excelSystem.api.db.pojo.vo.DateListVO;
import ucl.group.excelSystem.api.db.pojo.vo.ProjectMonthListVO;

import java.math.BigDecimal;
import java.util.List;

/**
 * @projectName: code
 * @package: ucl.group.excelSystem.api.controller.form
 * @className: SaveProjectMonthListForm
 * @author: he_jiale
 * @description: TODO
 * @date: 2024/07/16 15:41
 * @version: 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SaveProjectMonthListForm {
    private String customerName;
    private BigDecimal orderAmountSum;
    private Long monthId;
    private String productNum;
    private String productName;
    private String summary;
    private BigDecimal orderAmount;
    private String remark;
    private String principal;
    private Long projectTechnicianId;
    private String name;
    private BigDecimal cPrice;
    private BigDecimal personMonth;
    @JsonIgnore
    private String belongCompany;
    @JsonIgnore
    private String projectName;
    //一个客户的总技术者
    private int countCustomer;
    //一个项目的总技术者
    private int countProject;
    /**
     * @param null:
     * @return null
     * @author he_jiale
     * @description 日期信息，monthId从technicianList里获取
     * @date 2024/07/12 18:45
     */
    private List<DateListVO> dateList;
}
