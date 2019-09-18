select 
	concat(datepart(year, CreationDate),'-', datepart(month, CreationDate)) as dt,
	count(1) num_serverless_mentions
from 
	Posts 
where 
	Title LIKE '%serverless%'
group by 
	concat(datepart(year, CreationDate),'-', datepart(month, CreationDate))