package com.yesenia.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.Repository;

import com.yesenia.models.Language;

public interface LanguageRepository extends Repository<Language, Long>{
	
	//Queries here
	List<Language> findAll(); // it selects all from the table
	Optional <Language> findById(Long id);// ////SELECT * FROM languages WHERE id='id'
	Language save(Language lang);
	void deleteById(Long id);
}

