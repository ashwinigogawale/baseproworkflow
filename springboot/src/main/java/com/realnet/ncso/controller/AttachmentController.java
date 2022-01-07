package com.realnet.ncso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.realnet.ncso.entity.Attachments;
import com.realnet.ncso.service.AttachmentService;

import io.swagger.annotations.Api;

@RestController
@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
//@CrossOrigin("*")
@RequestMapping(value = "/ncso_attch", produces=org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
@Api(tags = {"/ncso_attch"})
public class AttachmentController {
	
	@Autowired
	private AttachmentService attachmentService;
	
	@PostMapping("/create")
	public ResponseEntity<?> add(@RequestBody Attachments attachments){
		Attachments addToDb = this.attachmentService.addToDb(attachments);
		return ResponseEntity.ok(addToDb);
	}
	
	@PutMapping("/create")
	public ResponseEntity<?> update(@RequestBody Attachments attachments){
		Attachments addToDb = this.attachmentService.updateToDb(attachments);
		return ResponseEntity.ok(addToDb);
	}
	
	@GetMapping("/get-one/{id}")
	public ResponseEntity<?> getOne(@PathVariable("id") Long id){
		Attachments oneAttchById = this.attachmentService.getOneAttchById(id);
		return ResponseEntity.ok(oneAttchById);
	}
	
	@GetMapping("/get-all")
	public List<Attachments> getAll(){
		List<Attachments> allAttach = this.attachmentService.getAllAttach();
		return allAttach;
	}
	
	@DeleteMapping("/delete/{id}")
	public void delete(@PathVariable("id") Long id) {
		System.out.println("delete api");
		this.attachmentService.deleteAttchById(id);
	}

}
