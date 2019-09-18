select
	concat(cast(year(created_at) as string),'-',cast(month(created_at) as string)) dt,
	count(1) num_serverless_repos
FROM (TABLE_DATE_RANGE([githubarchive:day.], 
		TIMESTAMP('2017-01-01'), 
		TIMESTAMP('2019-06-01')
	))
	where repo.name like '%serverless%'
group by 1
order by 1