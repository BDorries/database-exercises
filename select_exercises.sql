SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_year FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT genre FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT * FROM albums WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'Rock';