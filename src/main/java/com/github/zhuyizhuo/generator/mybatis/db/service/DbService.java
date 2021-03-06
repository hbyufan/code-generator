package com.github.zhuyizhuo.generator.mybatis.db.service;

import com.github.zhuyizhuo.generator.mybatis.vo.TableInfo;

import java.util.List;

/**
 * class: DbService <br>
 * description: 数据库抽象接口 <br>
 * time: 2018/7/30 12:56
 *
 * @author yizhuo <br>
 * @version 1.0
 */
public interface DbService {

    List<TableInfo> getTableColumns();

}
