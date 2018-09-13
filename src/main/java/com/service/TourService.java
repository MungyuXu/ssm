package com.service;

import com.model.Tour;

import java.util.List;

public interface TourService {
    public List<Tour> queryTour(Integer num);
    public List<Tour> queryTour2(Integer num);

    public  List<Tour> queryAll(Tour tour);
    public  void  add(Tour tour);
    public  void  del(Integer id);
    public  Tour getById(Integer id);
    public  void  update(Tour tour);
}
