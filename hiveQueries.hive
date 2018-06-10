create external table if not exists temp2 (Score INT, OwnerUserId INT, Title STRING, Tags STRING) 
row format delimited fields terminated by ',' stored as textfile location '/FinalPig/Output';

select score, title from temp2 sort by score desc limit 10;
select owneruserid, score, title from temp2 sort by score desc limit 10;
select count(*) from temp2 where temp2.OwnerUserId IN (select distinct temp2.OwnerUserId from temp2 WHERE (temp2.Body REGEXP 'hadoop') OR (temp2.Title REGEXP 'hadoop')); 
