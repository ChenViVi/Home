package com.vivi.home.repository;

import com.vivi.home.model.TypeEntity;
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
public interface TypeRepository extends JpaRepository<TypeEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update TypeEntity type set type.name=:qName where type.id=:qId")
    void updateType(@Param("qId") int id, @Param("qName") String name);
}
