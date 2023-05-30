DECLARE @JSON    VARCHAR(MAX) 
select @json=BulkColumn --BulkColumn is a keyword
from openrowset (bulk 'C:\Users\ivred\OneDrive\Pictures\Desktop\a.json',single_clob) as import
select kind,
etag, nextPageToken,regionCode,pageInfo_totalResults,pageInfo_resultsPerPage,
items_kind,items_etag,items_id_kind,items_id_channelId,items_id_videoId
FROM OPENJSON(@json) WITH(
      kind        VARCHAR(200)    '$.kind'
     ,etag     VARCHAR(400)    '$.etag'
     ,nextPageToken    VARCHAR(400)    '$.nextPageToken'
     ,regionCode    VARCHAR(400)    '$.regionCode'
     ,pageInfo_totalResults       varchar(200)           '$.pageInfo.totalResults'
	 ,pageInfo_resultsPerPage varchar(200) '$.pageInfo.resultsPerPage'
     ,items         NVARCHAR(MAX) '$.items' AS JSON
     )

CROSS APPLY OPENJSON(items) WITH (
     items_kind        VARCHAR(200)     '$.kind'
    ,items_etag    varchar(200)            '$.etag'
    ,items_id_kind varchar(200)           '$.id.kind'
	,items_id_channelId varchar(100) '$.id.channelId'
	,items_id_videoId varchar(200) '$.id.videoId'
);