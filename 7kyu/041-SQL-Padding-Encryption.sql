/*  SQL  */
SELECT RPAD(md5, LENGTH(sha256), '1') AS md5, LPAD(sha1, LENGTH(sha256), '0' ) AS sha1, sha256 FROM encryption;