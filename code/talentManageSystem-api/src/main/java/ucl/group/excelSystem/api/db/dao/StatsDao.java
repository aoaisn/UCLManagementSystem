package ucl.group.excelSystem.api.db.dao;

import lombok.Data;
import ucl.group.excelSystem.api.db.pojo.BasicStatsEntity;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

/**
 * @projectName: code
 * @package: ucl.group.excelSystem.api.db.dao
 * @className: StatsDao
 * @author: he_jiale
 * @description: year_month因为是数据库专用字段，编写sql时必须用``框住
 * @date: 2024/07/08 14:27
 * @version: 1.0
 */
public interface StatsDao {
    public int addStats(BasicStatsEntity basicStatsEntity);
    public int modifyStats(BasicStatsEntity basicStatsEntity);
    public BasicStatsEntity searchByYearMonth(String yearMonth);
    public int edit(BasicStatsEntity basicStatsEntity);
    public int countByYearMonth(List<String> yearMonths);
    public Date selectYearMonth();
    public void updateStatsByYearMonth(BasicStatsEntity basicStatsEntity);
}
