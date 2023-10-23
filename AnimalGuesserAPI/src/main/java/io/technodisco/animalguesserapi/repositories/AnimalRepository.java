package io.technodisco.animalguesserapi.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import io.technodisco.animalguesserapi.models.Animal;

public interface AnimalRepository extends JpaRepository<Animal, String> {
	
	

}
