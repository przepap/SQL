select Name,
		case name when 'English' then 'Angielski'
				when 'Spanish' then 'Hiszpañski'
				else 'Jakiœ inny jêzyk'
				end as "Nowa kolumna"
from Production.Culture;

select Name,
		case name when 'English' then 'Angielski'
				when 'Spanish' then 'Hiszpañski'
				when 'Arabic' then convert(varchar,GETDATE(),102)
				when 'Thai' then left(name,1)
				else 'Jakiœ inny jêzyk'
				end as "Nowa kolumna"
from Production.Culture;