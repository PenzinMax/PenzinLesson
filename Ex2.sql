/*1. Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.*/

	SELECT user_id, COUNT(*) AS community_count
	FROM users_communities
	GROUP BY user_id;

/*2. Подсчитать количество пользователей в каждом сообществе.*/

	SELECT community_id, COUNT(user_id) AS user_count
	FROM users_communities
	GROUP BY community_id;

/*3. Пусть задан некоторый пользователь. 

	SELECT community_id, COUNT(user_id) AS user_count
	FROM users_communities
	WHERE community_id  IN (3);

/*4* Подсчитать общее количество лайков, которые получили пользователи младше 18 лет*/

	SELECT COUNT(likes.id) AS total_likes
	FROM likes
	JOIN profiles ON likes.user_id = profiles.user_id
	WHERE profiles.birthday > CURDATE() - INTERVAL 18 YEAR;

/*5* Определить кто больше поставил лайков (всего): мужчины или женщины.*/

	SELECT profiles.gender, COUNT(likes.id) AS total_likes
	FROM likes
	JOIN profiles ON likes.user_id = profiles.user_id
	GROUP BY profiles.gender;