package com.service;

import com.github.pagehelper.PageHelper;
import com.mapper.TourMapper;
import com.model.Tour;
import com.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourServiceImpl implements TourService {
    @Autowired
    private TourMapper tourMapper;

    @Override
    public List<Tour> queryTour(Integer num) {
        return this.tourMapper.queryTour(num);
    }

    @Override
    public List<Tour> queryTour2(Integer num) {
        return this.tourMapper.queryTour2(num);
    }

    @Override
    public Page queryAll(Integer currPage, Tour tour) {
        if (currPage == null) currPage = 1;
        Page page = new Page();
        page.setCurrPage(currPage);
        page.setTotalCount(this.tourMapper.selCount(tour));
        page.init();
        PageHelper.startPage(currPage,Page.PAGE_SIZE);
        page.setData(this.tourMapper.queryAll(tour));


        return page;
    }

    @Override
    public void add(Tour tour) {
        this.tourMapper.add(tour);
    }

    @Override
    public void del(Integer id) {
        this.tourMapper.del(id);
    }

    @Override
    public Tour getById(Integer id) {
        return this.tourMapper.getById(id);
    }

    @Override
    public void update(Tour tour) {
        this.tourMapper.update(tour);
    }


}
