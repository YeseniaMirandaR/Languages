package com.yesenia.controllers;

//import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
/*import org.springframework.web.bind.annotation.RequestBody;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
/*import org.springframework.web.servlet.mvc.support.RedirectAttributes;*/
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yesenia.models.Language;
import com.yesenia.services.LanguageService;

@Controller
@RequestMapping("/languages")
public class LanguageController {
	private final LanguageService languageService;
	
	public LanguageController( LanguageService languageService ) {
		this.languageService = languageService;
	}
	
	//Routes 
	
	@RequestMapping( value="/", method = RequestMethod.GET )
	public String dashboard(Model model) {
		model.addAttribute("languages", languageService.getAllLanguages());
		return "dashboard.jsp";
	}
	
    @RequestMapping(value="/", method=RequestMethod.POST)
    //@RequestParam Map<String,String> body)
    public String createLanguage(@Valid @ModelAttribute("language") Language lang, 
    		BindingResult result , RedirectAttributes rediAtr){
        if (result.hasErrors()) {
        	//System.out.println(languageService);
            return "createlanguage.jsp";
        }// else {
        	System.out.println(languageService);
            languageService.createLanguage(lang);// createLanguage from service
            return "redirect:";
    }
    //}
    
    @RequestMapping( value="/new", method = RequestMethod.GET )
    public String newLanguage(@ModelAttribute("language") Language language) {
        return "createlanguage.jsp";
    }
	
   @RequestMapping( value="/{id}", method = RequestMethod.GET )
    public String showLanguage(@PathVariable("id") Long id, Model model) {
    	model.addAttribute("language", languageService.findLanguage(id));//findLanguage from service
        return "showlanguage.jsp";
    }
	

	@RequestMapping("/{id}/edit")
	public String editLanguage(@PathVariable("id") Long id, Model model) {
		model.addAttribute("language", languageService.findLanguage(id));
		return "editlanguage.jsp";
	}
    
	@RequestMapping(value="/{id}", method=RequestMethod.PUT)
	public String updateLanguage(@Valid @ModelAttribute("language") Language lang, BindingResult result) {
		if(result.hasErrors())
			return "editlanguage.jsp";
		languageService.updateLanguage(lang);// updateLanguage from repository
		return "redirect:";
	}
	
	
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public String deleteLanguage(@PathVariable("id") Long id) {
		languageService.deleteLanguage(id); //deleteLanguage from Service
		return "redirect:";
	}
}

