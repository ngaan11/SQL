--EX1
SELECT tweet_id
FROM Tweets
WHERE char_length(content) > 15;
