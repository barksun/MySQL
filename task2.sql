-- Добавляем внешние ключи в БД vk
-- Посмотрим ER-диаграмму в DBeaver (связей нет)
-- Для таблицы профилей
USE vk;

-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
ALTER TABLE profiles
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
     
ALTER TABLE profiles
  ADD CONSTRAINT user_status_id_id_fk
    FOREIGN KEY (user_status_id) REFERENCES user_statuses(id)
      ON DELETE SET NULL;
     
ALTER TABLE profiles
  ADD CONSTRAINT profiles_gender_id_fk
    FOREIGN KEY (gender_id) REFERENCES gender(id)
      ON DELETE CASCADE;   

ALTER TABLE communities_users
  ADD CONSTRAINT comm_users_comm_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;
     
ALTER TABLE communities_users    
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
   	   ON DELETE CASCADE;
    
/*
ALTER TABLE communities_users
  ADD CONSTRAINT comm_users_comm_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id);*/
   
ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE likes 
  ADD CONSTRAINT target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   
ALTER TABLE contacts 
  ADD CONSTRAINT contacts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id);
   
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id);
   
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);
   
ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id); 
   
ALTER TABLE posts 
  ADD CONSTRAINT community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities_users(community_id);   
   
ALTER TABLE posts 
  ADD CONSTRAINT media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id); 
   
ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id);  

ALTER TABLE media 
  ADD CONSTRAINT media_type_id_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);    
   

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES profiles(user_id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES profiles(user_id);

-- Посмотрим ER-диаграмму в DBeaver (появились связи)
