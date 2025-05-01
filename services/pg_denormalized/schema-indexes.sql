CREATE INDEX test_1 ON tweets_jsonb USING GIN((data->'entities'->'hashtags'));

CREATE INDEX test_2 ON tweets_jsonb USING GIN((data->'extended_tweet'->'entities'->'hashtags'));

CREATE INDEX test_index_3 ON tweets_jsonb USING GIN(to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text', data->>'text')));
