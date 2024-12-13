package com.ServletContextListener;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.DictionaryEntity;
import com.service.DictionaryService;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component

public class DictionaryInitService implements ServletContextAware {

    @Resource
    private DictionaryService dictionaryService;

    ServletContext servletContext;

    Map<String, Map<Integer,String>> map = new HashMap<>();
    public void init()
    {
        List<DictionaryEntity> dictionaryEntities = dictionaryService.selectList(new EntityWrapper<DictionaryEntity>());

        for(DictionaryEntity d :dictionaryEntities){
            Map<Integer, String> m = map.get(d.getDicCode());
            if(m ==null || m.isEmpty()){
                m = new HashMap<>();
            }
            m.put(d.getCodeIndex(),d.getIndexName());
            map.put(d.getDicCode(),m);
        }
        servletContext.setAttribute("dictionaryMap", map);

    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}
