CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    username VARCHAR(30) NOT NULL,
    bio VARCHAR(400),
    avatar VARCHAR(200),
    phone_no VARCHAR(25),
    email VARCHAR(40),
    password VARCHAR(50),
    status VARCHAR(15),
    CHECK (COALESCE(phone_no, email) IS NOT NULL) -- must have at least phone or email
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    url VARCHAR(200) NOT NULL,
    caption VARCHAR(240),
    lat REAL CHECK (lat IS NULL OR (lat >= -90 AND lat <= 90)),
    lng REAL CHECK (lng IS NULL OR (lng >= -180 AND lng <= 180)),
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

create Table comments(
 id serial primary key,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  contents varchar(240) not null,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

Create Table Likes(
id serial primary key,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
  comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
  check(
coalesce((post_id)::boolean::integer,0)
+
coalesce((comment_id)::boolean::integer,0)
=1
  ),
  unique(post_id,comment_id,user_id)
);

Create table photo_tags(
id serial primary key,
 created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  x integer not null,
  y integer not null,
   unique(post_id,user_id)
 );
 
create Table caption_tags(
 id serial primary key,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  unique(user_id,post_id)
  );

create Table Hashtags(
   id serial primary key,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  title varchar(20) not null unique
);

create Table hashtags_posts(
 id serial primary key,
 Hashtag_id integer not null references Hashtags(id) on delete cascade,
 post_id integer not null references posts(id) on delete cascade,
 unique(Hashtag_id, post_id)
);

create Table followers(
  id serial primary key,
 created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
 leader_id integer not null references users(id)  on delete cascade,
 follower_id integer not null references users(id)  on delete cascade,
 unique(leader_id, follower_id)
 );