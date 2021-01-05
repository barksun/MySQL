USE vk;

SELECT user_id, birthday, COUNT(user_id) AS counts 
	FROM (SELECT likes.user_id, profiles.birthday FROM likes, profiles WHERE likes.user_id = profiles.user_id ORDER BY birthday DESC LIMIT 0, 17) t2 
		GROUP BY user_id ORDER BY birthday DESC;