select Name,
		case name when 'English' then 'Angielski'
				when 'Spanish' then 'Hiszpa�ski'
				else 'Jaki� inny j�zyk'
				end as "Nowa kolumna"
from Production.Culture;

select Name,
		case name when 'English' then 'Angielski'
				when 'Spanish' then 'Hiszpa�ski'
				when 'Arabic' then convert(varchar,GETDATE(),102)
				when 'Thai' then left(name,1)
				else 'Jaki� inny j�zyk'
				end as "Nowa kolumna"
from Production.Culture;