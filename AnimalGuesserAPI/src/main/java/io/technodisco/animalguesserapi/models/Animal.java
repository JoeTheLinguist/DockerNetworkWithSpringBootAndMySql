package io.technodisco.animalguesserapi.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Animal {
	@Id
	private String name;
	private String sound;
	@Column(name="number_of_legs")
	private int numLegs;
	private boolean hasTail;
	private boolean hasFur;
	private boolean isCarnivore;
	
	Animal() {
		
	}
	
	Animal(String name, String sound, int numLegs, boolean hasTail, boolean hasFur, boolean isCarnivore) {
		this.name = name;
		this.sound = sound;
		this.numLegs = numLegs;
		this.hasTail = hasTail;
		this.hasFur = hasFur;
		this.isCarnivore = isCarnivore;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setSound(String sound) {
		this.sound = sound;
	}
	
	public String getSound() {
		return this.sound;
	}
	
	public void setNumLegs(int numLegs) {
		this.numLegs = numLegs;
	}
	
	public int getNumLegs() {
		return this.numLegs;
	}
	
	public void setHasTail(boolean hasTail) {
		this.hasTail = hasTail;
	}
	
	public boolean getHasTail() {
		return this.hasTail;
	}
	
	public void setHasFur(boolean hasFur) {
		this.hasFur = hasFur;
	}
	
	public boolean getHasFur() {
		return this.hasFur;
	}
	
	public void setIsCarnivore(boolean isCarnivore) {
		this.isCarnivore = isCarnivore;
	}
	
	public boolean getIsCarnivore() {
		return this.isCarnivore;
	}
}
