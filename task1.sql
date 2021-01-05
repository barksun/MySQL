USE vk;
INSERT INTO posts
(user_id, community_id, head, body, media_id, is_public, is_archived, created_at, updated_at)
VALUES((SELECT id FROM users ORDER BY rand()), (SELECT community_id FROM communities_users ORDER BY rand()), '', '', (SELECT id FROM media ORDER BY rand()), 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);