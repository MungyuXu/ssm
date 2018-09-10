package com.mapper;

import com.model.Tour;

import java.util.List;

public interface TourMapper {
    public List<Tour> queryTour(Integer num);
    public List<Tour> queryTour2(Integer num);
}
