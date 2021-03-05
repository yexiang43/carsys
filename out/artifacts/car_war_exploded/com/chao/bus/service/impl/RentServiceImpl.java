package com.chao.bus.service.impl;

import com.chao.bus.mapper.RentMapper;
import com.chao.bus.service.RentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RentServiceImpl implements RentService {

    @Autowired
    private RentMapper rentMapper;
}
