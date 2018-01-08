/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.dao;

import com.group4.music.dao.AudioDAO;
import com.group4.music.model.Audio;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Emi
 */
@Repository
public class AudioDAOImpl implements AudioDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    @Transactional
    public void saveOrUpdateAudio(Audio audio) {
        sessionFactory.getCurrentSession().saveOrUpdate(audio);
    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public List<Audio> listAudios() {
        //To avoid duplicates: setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)
        return (List<Audio>) sessionFactory.getCurrentSession().createCriteria(Audio.class).list();
    }
    
    @Override
    @SuppressWarnings("unchecked")
    public List<Audio> listAudiosByUserId(int userId) {
        Criteria crit = sessionFactory.getCurrentSession().createCriteria(Audio.class);
        crit.add(Restrictions.eq("user", userId));
        return (List<Audio>) crit.list();
    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public Audio getAudioById(int id) {
        //get method is only for id
        return (Audio) sessionFactory.getCurrentSession().get(Audio.class, id);

    }

    @Override
    @Transactional
    public void removeAudio(int id) {
        Audio audioToDelete = (Audio) sessionFactory.getCurrentSession().get(Audio.class, id);
        sessionFactory.getCurrentSession().delete(audioToDelete);
    }

    

}
