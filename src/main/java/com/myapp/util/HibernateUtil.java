package com.myapp.util;

import org.hamcrest.core.IsNull;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;


public class HibernateUtil {

   // Session session = sessionFactory.openSession();
  //Deprecated
   // private static SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();//new Configuration().configure().buildSessionFactory();//WHAY DO WE HAVE 2 HIBERNATEUTIL AND THIS ONE WAS CALLING CONFIGURE() WITHOUT PASSING HIBERNATE.CFG.XML IDK SHOULD WE DELETE THIS ONE????

    
    
    
    public static Session getSession() {
    	Configuration configuration = new Configuration();
    	System.out.println("Here1");
        configuration.configure("hibernate.cfg.xml");
        StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
        SessionFactory sessionFactory = configuration.buildSessionFactory(ssrb.build());
        if (sessionFactory == null)
        {
        	System.out.println("Is NULL");
        }
        System.out.println("Here");
        return sessionFactory.openSession();

    }
	
}
