package com.lisi.cms.service;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/**
 * 测试类启动spring容器
 * @ClassName: SpringJunit 
 * @Description: TODO
 * @author: charles
 * @date: 2019年5月21日 上午8:58:34
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-beans.xml")
public class SpringJunit {

}
