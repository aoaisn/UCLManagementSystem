package ucl.group.talentManageSystem.api.db.pojo.bo;


import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 文件信息
 *
 * @author hejiale
 */
@Data
public class SysFile
{
    /**
     * 文件名称
     */
    private String name;

    /**
     * 文件地址
     */
    private String url;


}
