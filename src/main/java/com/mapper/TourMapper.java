package com.mapper;

import com.model.Tour;

import java.util.List;

public interface TourMapper {
    public List<Tour> queryTour(Integer num);
    public List<Tour> queryTour2(Integer num);

    List<Tour> queryAll(Tour tour);
    void add(Tour tour);
    void  del(Integer id);
    Tour getById(Integer id);
    void  update(Tour tour);
    public Integer selCount(Tour tour);
}
