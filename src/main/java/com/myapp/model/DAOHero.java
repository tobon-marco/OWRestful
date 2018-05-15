package com.myapp.model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.myapp.beans.Hero;
import com.myapp.util.HibernateUtil;

public class DAOHero
{
	//GET ALL PROFILES FROM OUR DB
	public List<Hero> getAllHeroes()
	{
		 Session currSession = HibernateUtil.getSession();
	        
	    // @SuppressWarnings("unchecked")
		//List<Hero> allHeroes = (List<Hero>)currSession.createCriteria(Hero.class).list();
		 
		 String hql = "FROM Hero";
		 Query query = currSession.createQuery(hql);
		 
		 List<Hero> allHeroes = new ArrayList<>();
		 
		 for (int i =0; i < query.list().size(); i++)
		 {
			 allHeroes.add((Hero)query.list().get(i));
		 }
	     
	     currSession.close();
	     return allHeroes;
	}

	//GET A SPECIFIC PROFILE BASED ON A NAME
	public Hero getHeroesOnName(String name)
	{
		Session currSession = HibernateUtil.getSession();
		String hql = "from Hero where name =:names";
		Query query = currSession.createQuery(hql);
		
		query.setParameter("names", name);
		List<Hero> results = query.list();
		
		currSession.close();

		if(results.isEmpty())
			return null;
		else
			return (Hero)results.get(0);
	}
}
