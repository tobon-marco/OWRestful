package com.myapp.services;

import java.util.List;

import com.myapp.beans.Abilities;
import com.myapp.beans.Hero;
import com.myapp.model.DAOHero;


public class HeroService
{
	public static DAOHero heroDAO = new DAOHero();

	public List<Hero> getAllHeroes()
	{
		return heroDAO.getAllHeroes();
	}

	public Hero getHeroOnName(String name)
	{
		Hero obj = heroDAO.getHeroesOnName(name);
		if (obj == null)
			return new Hero();
		else 
			return obj;
	}

}
