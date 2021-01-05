USE vk;

SELECT DISTINCT gender_id, 
	(SELECT COUNT(gender_id) 
		FROM (SELECT DISTINCT likes.user_id, profiles.gender_id FROM likes, profiles WHERE likes.user_id = profiles.user_id ORDER BY gender_id) t2 WHERE gender_id = 1) counts 
			FROM (SELECT DISTINCT likes.user_id, profiles.gender_id FROM likes, profiles WHERE likes.user_id = profiles.user_id ORDER BY gender_id) t WHERE gender_id = 1
UNION
SELECT DISTINCT gender_id,
	(SELECT COUNT(gender_id) 
		FROM (SELECT DISTINCT likes.user_id, profiles.gender_id FROM likes, profiles WHERE likes.user_id = profiles.user_id ORDER BY gender_id) t2 WHERE gender_id = 2) counts 
			FROM (SELECT DISTINCT likes.user_id, profiles.gender_id FROM likes, profiles WHERE likes.user_id = profiles.user_id ORDER BY gender_id) t WHERE gender_id = 2;