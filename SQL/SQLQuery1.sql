  /*
 Data Cleaning 
 1. Remove the Unnecessary columns with selcting the ones we need 
 2.Extract  the youtube channels names from first column
 3.Rename the column names 
  
  */
  --- Charindex 
  ----SELECT CHARINDEX('prakash','My name is prakash') as position_of_p_in_prakash

 ---SELECT CHARINDEX('@',NOMBRE) FROm top_uk_youtubres_2024

  ---substring

 CREATE VIEW view_top_uk_youtubers_2024 AS

SELECT 
   CAST(SUBSTRING(NOMBRE, 1 ,CHARINDEX('@',NOMBRE) -1) AS VARCHAR(100))as channel_name,
  total_subscribers,
  total_videos,
  total_views
  FROM 
   top_uk_youtubres_2024
   