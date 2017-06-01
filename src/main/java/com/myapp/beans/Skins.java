package com.myapp.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="SKINS")
@XmlRootElement
public class Skins
{
	@Id
	@Column(name="ID")
	private int id;

	//@Column(name="HERO_ID")
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "HERO_ID", nullable = false)
	private Hero hero;
	
	@Column(name="SKIN_PIC")
	private String picture;

	//private Hero hero;

	//SETTERS AND GETTERS ===========================================================================
	public final int getId()
	{
		return id;
	}

	public final void setId(int id)
	{
		this.id = id;
	}

	public final Hero getHero()
	{
		return hero;
	}

	public final void setHero(Hero hero)
	{
		this.hero = hero;
	}

	public final String getPicture()
	{
		return picture;
	}

	public final void setPicture(String picture)
	{
		this.picture = picture;
	}

	// CONSTRUCTORS ===================================================================================================
	public Skins()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Skins(int id, Hero hero, String picture)
	{
		super();
		this.id = id;
		this.hero = hero;
		this.picture = picture;
	}

	@Override
	public String toString()
	{
		return "Skins [id=" + id + ", hero=" + hero + ", picture=" + picture + "]";
	}
	
}
