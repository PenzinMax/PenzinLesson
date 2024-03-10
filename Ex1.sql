/*1. �������� ������, ������������ ������ ���� (������ firstname) ������������� 
��� ���������� � ���������� �������. [ORDER BY]*/

	SELECT DISTINCT firstname 
	FROM users 
	ORDER BY firstname; 

/*2. �������� ���������� ������ ������ 35 ��� [COUNT].*/

	SELECT COUNT(*) FROM profiles p 
	WHERE gender = 'm' AND birthday < CURDATE() - INTERVAL 35 YEAR;
	
/*3. ������� ������ � ������ � ������ �������? (������� friend_requests) [GROUP BY]*/

	SELECT status, COUNT(*) AS request_count FROM friend_requests
	GROUP BY status;

/*4. �������� ����� ������������, ������� �������� ������ ���� ������ � ������ (������� friend_requests) [LIMIT].*/

	SELECT initiator_user_id AS user_id, COUNT(*) AS request_count
	FROM friend_requests
	GROUP BY initiator_user_id
	ORDER BY request_count DESC
	LIMIT 1;

/*5.* �������� �������� � ������ �����, ����� ������� ������� �� 5 �������� [LIKE].*/

	SELECT id, name FROM communities
	WHERE name LIKE '_____';
