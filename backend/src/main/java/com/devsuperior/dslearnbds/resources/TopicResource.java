package com.devsuperior.dslearnbds.resources;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.devsuperior.dslearnbds.entities.Topic;
import com.devsuperior.dslearnbds.services.TopicService;

@RestController
@RequestMapping(value = "/topics")
public class TopicResource {
	
	@Autowired
	TopicService service;
	
	@PostMapping
	public ResponseEntity<Topic> insert(@RequestBody Topic entity){
		entity = service.insert(entity);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
				.buildAndExpand(entity.getId()).toUri();
		return ResponseEntity.created(uri).body(entity);
	}

}
