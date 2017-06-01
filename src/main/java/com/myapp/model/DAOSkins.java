package com.myapp.model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.myapp.beans.Skins;
import com.myapp.util.HibernateUtil;

public class DAOSkins
{
	//GET ALL PROFILES FROM OUR DB
	public List<Skins> getHeroSkins(String name)
	{
		Session currSession = HibernateUtil.getSession();
		String hql = "Select S FROM Skins S INNER JOIN S.hero H where H.name =:names";
		Query query = currSession.createQuery(hql);
		query.setParameter("names", name);
		List<Skins> results = query.list();
		currSession.close();
		
		for (Skins st: results)
		{
			System.out.println(st);
		}
		if(results.isEmpty())
			return new ArrayList<Skins> ();
		else
			return results;
	}
}
