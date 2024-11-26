package ucl.group.excelSystem.api.db.dao;

import ucl.group.excelSystem.api.db.pojo.BasicCustomerEntity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public interface CustomerDao {
    public void insertCustomer(BasicCustomerEntity basicCustomerEntity);

    public void updateCustomer(BasicCustomerEntity basicCustomerEntity);

    public void deleteCustomer(Long[] customerIds);

    public ArrayList<HashMap> selectCustomerByPage(Map param);

    public long selectCustomerByPageCount();

    public BasicCustomerEntity searchById(Long customerId);
}
