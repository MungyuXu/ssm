package com.service;

import com.mapper.TourMapper;
import com.model.Tour;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourServiceImpl implements  TourService{
    @Autowired
  private   TourMapper tourMapper;
    @Override
    public List<Tour> queryTour(Integer num) {
        return this.tourMapper.queryTour(num);
    }
    @Override
    public List<Tour> queryTour2(Integer num) {
        return this.tourMapper.queryTour2(num);
    }
}
