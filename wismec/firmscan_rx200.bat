@echo off
title RX200

if exist %0.log del /q %0.log
rem http://www.wismec.com/software/wismec-tc-software-for-upgrading-reuleaux-rx200/
for /l %%i in (0,1,9) do (
	for /l %%j in (0,1,9) do (
		for /l %%k in (0,1,9) do (
			echo V%%i.%%j%%k
			if not exist "Reuleaux_RX200_V%%i.%%j%%k.zip" (
				firmscan\wget -q "http://www.wismec.com/download/rx200/V%%i_%%j%%k/Reuleaux_RX200_V%%i.%%j%%k.zip" 2> NUL
				if exist "Reuleaux_RX200_V%%i.%%j%%k.zip" (
					echo + Reuleaux_RX200_V%%i.%%j%%k.zip
					echo Reuleaux_RX200_V%%i.%%j%%k.zip >> %0.log
				)
			)
			if not exist "Reuleaux_RX200_V%%i.%%j%%k.zip" (
				firmscan\wget -q "http://www.wismec.com/images/support/download/RX200/Reuleaux_RX200_V%%i.%%j%%k.zip" 2> NUL
				if exist "Reuleaux_RX200_V%%i.%%j%%k.zip" (
					echo + Reuleaux_RX200_V%%i.%%j%%k.zip
					echo Reuleaux_RX200_V%%i.%%j%%k.zip >> %0.log
				)
			)
		)
	)

)
cls
if exist %0.log type %0.log
if exist %0.log del /q %0.log

pause