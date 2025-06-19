package com.example.demo.controller;

import com.example.demo.domain.Place;
import com.example.demo.repository.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/places")
public class PlaceController {

    @Autowired
    private PlaceRepository placeRepository;

    @GetMapping
    public List<Place> getAllPlaces() {
        return placeRepository.findAll();
    }

    // Optional: Thêm mới địa điểm (dùng cho test hoặc admin)
    @PostMapping
    public Place createPlace(@RequestBody Place place) {
        return placeRepository.save(place);
    }
}
