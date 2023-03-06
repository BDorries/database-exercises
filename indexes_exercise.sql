USE ymir_billie;

ALTER TABLE albums
ADD UNIQUE (album_name,artist);