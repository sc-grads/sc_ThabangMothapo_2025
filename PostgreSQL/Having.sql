select photo_id, count(id)
FROM COMMENTS
where photo_id<3
group BY photo_id
HAVING count(*) >2