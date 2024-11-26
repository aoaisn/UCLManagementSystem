package ucl.group.excelSystem.api.service;

import ucl.group.excelSystem.api.db.pojo.BasicCustomerEntity;
import ucl.group.talentManageSystem.api.common.PageUtils;

import java.util.Map;

public interface CustomerService {
    public void insertCustomer(BasicCustomerEntity basicCustomerEntity);

    public void updateCustomer(BasicCustomerEntity basicCustomerEntity);
    public void deleteCustomer(Long[] customerIds);
    public PageUtils selectCustomerByPage(Map param);
}
