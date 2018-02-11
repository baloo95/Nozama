package com.baloo.nozama.service.impl;

import com.baloo.nozama.mapper.PropertyValueMapper;
import com.baloo.nozama.pojo.Product;
import com.baloo.nozama.pojo.Property;
import com.baloo.nozama.pojo.PropertyValue;
import com.baloo.nozama.pojo.PropertyValueExample;
import com.baloo.nozama.service.PropertyService;
import com.baloo.nozama.service.PropertyValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertyValueServiceImpl implements PropertyValueService{
    @Autowired
    PropertyValueMapper propertyValueMapper;
    @Autowired
    PropertyService propertyService;
    @Override
    public void init(Product p) {
        List<Property> pts = propertyService.list(p.getCid());

        for(Property pt : pts) {
            PropertyValue pv = get(pt.getId(),p.getId());
            if(pv==null) {
                pv = new PropertyValue();
                pv.setPid(p.getId());
                pv.setPtid(pt.getId());
                propertyValueMapper.insert(pv);
            }
        }
    }

    @Override
    public void update(PropertyValue pv) {
        propertyValueMapper.updateByPrimaryKeySelective(pv);
    }

    @Override
    public PropertyValue get(int ptid, int pid) {
        PropertyValueExample propertyValueExample = new PropertyValueExample();
        propertyValueExample
                .createCriteria()
                .andPtidEqualTo(ptid)
                .andPidEqualTo(pid);
        List<PropertyValue> pvs = propertyValueMapper.selectByExample(propertyValueExample);
        if(pvs.isEmpty())
            return null;
        return pvs.get(0);
    }

    @Override
    public List<PropertyValue> list(int pid) {
        PropertyValueExample propertyValueExample = new PropertyValueExample();
        propertyValueExample
                .createCriteria()
                .andPidEqualTo(pid);
        List<PropertyValue> result = propertyValueMapper.selectByExample(propertyValueExample);
        for (PropertyValue pv : result) {
            Property property = propertyService.get(pv.getPtid());
            pv.setProperty(property);
        }
        return result;
    }
}
