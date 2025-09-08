CREATE TABLE users(
  id serial PRIMARY KEY,
  username VARCHAR(50)
  );
  
  INSERT INTO users(username)
  VALUES
  ('monahan93'),
  ('pferrer'),
  ('si93'),
  ('99stroman');
  
  select * FROM users;