package ucl.group.excelSystem.api.db.pojo;

import lombok.Data;
import ucl.group.talentManageSystem.api.db.pojo.BasicEntity;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * 项目月份表实体类
 */
@Data
public class BasicMonthEntity extends BasicEntity {

    private Long  monthId;
    private Long projectTechnicianId;
    private int monthDays;
    private BigDecimal presumedTime;
    private BigDecimal expectedPrice;
    private BigDecimal actualHours;

    private BigDecimal actualPrice;
    private Boolean actualPriceEdit;
    private BigDecimal from;
    private Boolean fromEdit;
    //下请单价
    private BigDecimal subcontractPrice;
    private int totalNumber;
    private LocalDate yearMonth;
    private String productNum;
    private String  productName;
    private String summary;
    private BigDecimal personMonth;
    private BigDecimal orderAmount;

}
