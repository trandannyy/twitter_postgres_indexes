CREATE INDEX problem1 ON tweet_tags(tag, id_tweets);

CREATE INDEX problem2 ON tweet_tags(id_tweets);

CREATE INDEX problem3 ON tweets(id_tweets);

CREATE INDEX problem4 ON tweets USING GIN (to_tsvector('english',text));

