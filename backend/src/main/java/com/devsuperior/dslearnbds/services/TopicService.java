package com.devsuperior.dslearnbds.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devsuperior.dslearnbds.entities.Topic;
import com.devsuperior.dslearnbds.repositories.TopicRepository;

@Service
public class TopicService {
	
	@Autowired
	private TopicRepository repository;
	
	@Transactional
	public Topic insert(Topic entity) {
		return repository.save(entity);
	}

}
