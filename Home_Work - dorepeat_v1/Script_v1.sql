SELECT count (*) FROM wp_comments wc;

CALL dorepeat_v1(1)

SELECT * from wp_comments
order by comment_ID desc;

DELETE FROM  wp_comments
WHERE comment_post_ID = 1;