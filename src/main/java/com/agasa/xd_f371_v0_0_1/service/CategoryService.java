package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.Category;
import org.jfree.chart.title.Title;

import java.util.List;

public interface CategoryService {
    List<Category> getAll();
    int create(Category category);
    int update(Category category);
    int delete(int category_id);
    TitleDto getTitleById(int catalog);
    Category getTitleByttLpId(int tt_lpId);
}
