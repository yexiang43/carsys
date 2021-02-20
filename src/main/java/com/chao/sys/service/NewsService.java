package com.chao.sys.service;

import com.chao.sys.domain.News;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.NewsVo;

import java.util.List;

public interface NewsService {

    /**
     * 查询所有公告
     *
     * @param newsVo
     * @return
     */
    public DataGridView queryAllNews(NewsVo newsVo);

    /**
     * 增加公告
     *
     * @param newsVo
     */
    void addNews(NewsVo newsVo);

    /**
     * 修改公告
     *
     * @param newsVo
     */
    void updateNews(NewsVo newsVo);
    /**
     * 根据用户Id删除公告
     */
    void deleteNews(Integer id);

    /**
     * 批量删除公告
     */
    void deleteBatchNews(Integer[] ibs);
    /**
     * 查询所有公告
     *
     */
    List<News> AllNews();

}



