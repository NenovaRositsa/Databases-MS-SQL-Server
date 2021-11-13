select top(5) c.CountryName, r.RiverName 
from Countries as c
left join CountriesRivers as cr on cr.CountryCode = c.CountryCode
left join Rivers as r on r.id = cr.RiverId
where ContinentCode = 'AF'
order by c.CountryName