@echo off
title Pico

for /l %%i in (0,1,9) do (
	for /l %%j in (0,1,9) do (
		for /l %%k in (0,1,9) do (
			echo V%%i.%%j%%k
			if not exist "iStick_Pico_V%%i.%%j%%k.zip" (
				firmscan\wget -q "http://www.eleafworld.com/wp-content/uploads/download/iStick_Pico_V%%i.%%j%%k.zip" 2> NUL
				if exist "iStick_Pico_V%%i.%%j%%k.zip" echo + iStick_Pico_V%%i.%%j%%k.zip
			)
		)
	)

)

pause