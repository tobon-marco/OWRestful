package com.myapp.services;

import java.util.List;

import com.myapp.beans.Skins;
import com.myapp.model.DAOSkins;

public class SkinService
{
	public static DAOSkins skinDAO = new DAOSkins();

	public List<Skins> getHeroSkins(String name)
	{
		List<Skins> obj = skinDAO.getHeroSkins(name);
		return obj;
	}
}
