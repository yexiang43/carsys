package com.chao.sys.service.impl;

import com.chao.sys.domain.Menu;
import com.chao.sys.mapper.MenuMapper;
import com.chao.sys.service.MenuService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.MenuVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public List<Menu> queryAllMenuForList(MenuVo menuVo) {
        return menuMapper.queryAllMenu(menuVo);
    }

    /**
     * 权限管理在改
     * @param menuVo
     * @param userId
     * @return
     */
    @Override
    public List<Menu> queryAllMenuByUserIdForList(MenuVo menuVo, Integer userId) {
        return menuMapper.queryAllMenuByUid(menuVo.getAvailable(),userId);
    }

    @Override
    public DataGridView queryAllMenu(MenuVo menuVo) {
        Page<Object> page= PageHelper.startPage(menuVo.getPage(),menuVo.getLimit());
        List<Menu> data=this.menuMapper.queryAllMenu(menuVo);

        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addMenu(MenuVo menuVo) {
       this.menuMapper.insertSelective(menuVo);
    }

    @Override
    public void updateMenu(MenuVo menuVo) {
        this.menuMapper.updateByPrimaryKeySelective(menuVo);
    }

    @Override
    public Integer queryMenuByPid(Integer pid) {

        return this.menuMapper.queryMenuByPid(pid);
    }

    @Override
    public void deleteMenu(MenuVo menuVo) {

        this.menuMapper.deleteByPrimaryKey(menuVo.getId());

    }
}
