package com.myapp.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="ABILITIES")
@XmlRootElement
public class Abilities
{
	//PRIVATE MEMBER FIELDS ====================================================
	@Id
	@Column(name="ID")
	private int id;
	
	@Column(name="AB1")
	private String ab1;
	
	@Column(name="AB2")
	private String ab2;
	
	@Column(name="AB3")
	private String ab3;
	
	@Column(name="AB4")
	private String ab4;
	
	@Column(name="ULT")
	private String ult;
	
	//SETTERS AND GETTERS ================================================
	public final int getId()
	{
		return id;
	}

	public final void setId(int id)
	{
		this.id = id;
	}

	public final String getAb1()
	{
		return ab1;
	}

	public final void setAb1(String ab1)
	{
		this.ab1 = ab1;
	}

	public final String getAb2()
	{
		return ab2;
	}

	public final void setAb2(String ab2)
	{
		this.ab2 = ab2;
	}

	public final String getAb3()
	{
		return ab3;
	}

	public final void setAb3(String ab3)
	{
		this.ab3 = ab3;
	}

	public final String getAb4()
	{
		return ab4;
	}

	public final void setAb4(String ab4)
	{
		this.ab4 = ab4;
	}

	public final String getUlt()
	{
		return ult;
	}

	public final void setUlt(String ult)
	{
		this.ult = ult;
	}

	//CONSTRUCTOR =======================================================

	public Abilities()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Abilities(int id, String ab1, String ab2, String ab3, String ab4, String ult, Hero hero)
	{
		super();
		this.id = id;
		this.ab1 = ab1;
		this.ab2 = ab2;
		this.ab3 = ab3;
		this.ab4 = ab4;
		this.ult = ult;
	}
	
}