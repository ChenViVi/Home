package com.vivi.home.repository;

import com.vivi.home.model.SearchEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2017/7/27.
 */
@Repository
public interface SearchRepository extends JpaRepository<SearchEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update SearchEntity site set site.name=:qName,site.url=:qUrl where site.id=:qId")
    void updateSearch(@Param("qId") int id, @Param("qName") String name, @Param("qUrl") String url);
}
