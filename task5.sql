USE vk;
SELECT user_id AS user_id_did_not_put_likes, first_name, last_name FROM profiles p3 WHERE user_id NOT IN (SELECT user_id FROM likes l2) ORDER BY user_id; 