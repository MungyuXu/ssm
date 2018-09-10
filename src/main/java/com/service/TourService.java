package com.service;

import com.model.Tour;

import java.util.List;

public interface TourService {
    public List<Tour> queryTour(Integer num);
    public List<Tour> queryTour2(Integer num);
}
