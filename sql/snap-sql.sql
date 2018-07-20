-- The statement below set the collation of the database to utf-8
ALTER DATABASE rbecker8 CHARACTER SET utf8 COLLATE utf8_unicode_ci
;

DROP TABLE IF EXISTS comment;

CREATE TABLE comment (
		commentId BINARY (16) NOT NULL,
		commentDateTime TIMESTAMP,
		commentText VARCHAR (128),
		-- unique index to avoid duplicate data
		UNIQUE (commentId),
		-- officiates primary key for comment
		PRIMARY KEY(commentId)
);