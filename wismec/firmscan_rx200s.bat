@echo off
title RX200s

rem http://www.wismec.com/software/wismec-tc-software-for-upgrading-reuleaux-rx200s/
for /l %%i in (0,1,9) do (
	for /l %%j in (0,1,9) do (
		for /l %%k in (0,1,9) do (
			echo V%%i.%%j%%k
			if not exist "Reuleaux_RX200S_V%%i.%%j%%k.zip" (
				firmscan\wget -q "http://www.wismec.com/images/support/download/RX200S/Reuleaux_RX200S_V%%i.%%j%%k.zip" 2> NUL
				if exist "Reuleaux_RX200S_V%%i.%%j%%k.zip" echo + Reuleaux_RX200S_V%%i.%%j%%k.zip
			)
		)
	)

)

pause