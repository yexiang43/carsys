package com.chao.sys.service.impl;

import com.chao.sys.domain.News;
import com.chao.sys.mapper.NewsMapper;
import com.chao.sys.service.NewsService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.NewsVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;

    @Override
    public DataGridView queryAllNews(NewsVo newsVo) {
        Page<Object> page= PageHelper.startPage(newsVo.getPage(),newsVo.getLimit());
        List<News> data=this.newsMapper.queryAllNews(newsVo);
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addNews(NewsVo newsVo) {
          this.newsMapper.insertSelective(newsVo);
    }

    @Override
    public void deleteNews(Integer id) {
        this.newsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteBatchNews(Integer[] ibs) {
        for (Integer ib : ibs) {
            this.deleteNews(ib);
        }
    }

    @Override
    public void updateNews(NewsVo newsVo) {
        this.newsMapper.updateByPrimaryKeySelective(newsVo);
    }

    @Override
    public List<News> AllNews() {
        News news=new News();
        return this.newsMapper.queryAllNews(news);
    }
}
