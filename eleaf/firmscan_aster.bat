@echo off
title Aster

for /l %%i in (0,1,9) do (
	for /l %%j in (0,1,9) do (
		for /l %%k in (0,1,9) do (
			echo V%%i.%%j%%k
			if not exist "ASTER_V%%i.%%j%%k.zip" (
				firmscan\wget -q "http://www.eleafworld.com/wp-content/uploads/download/ASTER_V%%i.%%j%%k.zip" 2> NUL
				if not exist "ASTER_V%%i.%%j%%k.zip" (
					firmscan\wget -q "http://www.eleafworld.com/image/aster/ASTER_V%%i.%%j%%k.zip" 2> NUL
				)
				if exist "ASTER_V%%i.%%j%%k.zip" echo + ASTER_V%%i.%%j%%k.zip
			)
		)
	)

)

pause
