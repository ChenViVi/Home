package com.vivi.home.repository;

import com.vivi.home.model.SiteEntity;
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
public interface SiteRepository extends JpaRepository<SiteEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update SiteEntity site set site.name=:qName, site.typeId=:qTypeId," +
            "site.url=:qUrl where site.id=:qId")
    void updateArticle(@Param("qId") int id, @Param("qTypeId") int typeId, @Param("qName") String name, @Param("qUrl") String url);

    @Modifying
    @Transactional
    @Query("update SiteEntity site set site.typeId=-1 where site.typeId=:qId")
    public void deleteType(@Param("qId") int id);
}
