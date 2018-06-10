REGISTER /usr/lib/pig/piggybank.jar;
DEFINE CSVLoader org.apache.pig.piggybank.storage.CSVLoader();
A = Load '/FinalPig' USING CSVLoader(',') AS (Id:int,PostTypeId:int,AcceptedAnswersId:int,ParentId:int,CreationDate:chararray,DeletionDate:chararray,Score:int,ViewCount:int,Body:chararray,OwnerUserId:int,OwnerDisplayName:chararray,LastEditorUserId:int,LastEditorDisplayName:chararray,LastEditDate:chararray,LastActivityDate:chararray,Title:chararray,Tags:chararray,AnswerCount:int,CommentCount:int,FavoriteCount:int,ClosedDate:chararray,CommunityOwnedDate:chararray);


B = foreach A generate Score, Body, OwnerUserId, Title, Tags; 
STORE B INTO '/FinalPig/Output' USING PigStorage(',');	
