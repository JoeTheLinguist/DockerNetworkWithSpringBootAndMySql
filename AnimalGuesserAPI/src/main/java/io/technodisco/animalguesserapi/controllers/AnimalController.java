package io.technodisco.animalguesserapi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.technodisco.animalguesserapi.models.Animal;
import io.technodisco.animalguesserapi.repositories.AnimalRepository;

@RestController
@RequestMapping("/animals")
public class AnimalController {
	@Autowired
	private AnimalRepository animalRepo;
	
	@GetMapping("/index")
	public List<Animal> showAll() {
		List<Animal> animalList = animalRepo.findAll();
		return animalList;
	}
}
