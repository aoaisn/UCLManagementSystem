package ucl.group.excelSystem.api.db.pojo.vo;

import lombok.Data;
import lombok.NonNull;

import java.math.BigDecimal;

/**
 * @projectName: code
 * @package: ucl.group.excelSystem.api.db.pojo.vo
 * @className: MonthClassArrVO
 * @author: he_jiale
 * @description: TODO
 * @date: 2024/07/16 16:08
 * @version: 1.0
 */
@Data

public class MonthClassArrVO {

    private String presumedTime;
    private String expectedPrice;
    private String actualHours;
    private String actualPrice;
    private String from;
    private String subcontractPrice;

}
