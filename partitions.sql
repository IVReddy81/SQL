USE [hyuuu]
GO
CREATE PARTITION FUNCTION [yearpart](int) AS RANGE LEFT FOR VALUES (N'2300', N'2800', N'3000')

CREATE PARTITION SCHEME [partscheme] AS PARTITION [yearpart] TO ([PRIMARY], [second], [third], [third])

CREATE CLUSTERED INDEX [ClusteredIndex_on_partscheme_638188856439058362] ON [dbo].[year]
(
	[id]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [partscheme]([id])

DROP INDEX [ClusteredIndex_on_partscheme_638188856439058362] ON [dbo].[year]

--to see partition
select *,$partition.yearpart(id) from year -- $partition.partitionfunctionname
select $partition.yearpart('2345')