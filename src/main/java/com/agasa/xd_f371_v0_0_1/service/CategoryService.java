package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getAll();
    List<String> getAllTypeTitle();
    List<String> getAllCode();
    List<String> getAll_Header1();
    List<String> getAll_Header2();
    List<String> getAll_Header3();
    int create(Category category);
    int updateAndDoNotConflic(Category category);
    int update(Category category);
    int updateType(Category category);
    int delete(int category_id);
    TitleDto getTitleById(int catalog);
    Category getTitleByttLpId(int tructhuocId, String type);
    Category findByCode(String code, String type);
    List<Category> getCategoryByTructhuocId(int tructhuocId);
    int deleteBytructhuocId(int tructhuocId);
}
