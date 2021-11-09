package com.yesenia.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yesenia.models.Language;
import com.yesenia.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	
	//Constructor
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	//Methods
	public List<Language> getAllLanguages(){
		return languageRepository.findAll(); // findAll from the repository file
	}
	public Language findLanguage(Long id) {
		return languageRepository.findById(id).orElse(null);
	}
		
	public Language createLanguage(Language lang) {
		return languageRepository.save(lang);
	}
	
	public Language updateLanguage(Language lang) {
		return languageRepository.save(lang);
	}
	
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}
}
