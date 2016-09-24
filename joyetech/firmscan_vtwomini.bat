@echo off
title VTwo Mini

for /l %%i in (0,1,9) do (
	for /l %%j in (0,1,9) do (
		for /l %%k in (0,1,9) do (
			echo V%%i.%%j%%k
			if not exist "UpdateFirmware_V%%i%%j%%k.zip" (
				firmscan\wget -q -O "UpdateFirmware_V%%i%%j%%k.zip" "http://www.joyetech.com/wp-content/uploads/2016/05/evicvtwomini/V%%i_%%j%%k/win/UpdateFirmware.zip" 2> NUL
				for %%F in (UpdateFirmware_V%%i%%j%%k.zip) do if %%~zF equ 0 del "%%F"
				if exist "UpdateFirmware_V%%i%%j%%k.zip" echo + UpdateFirmware_V%%i%%j%%k.zip
			)
		)
	)

)
echo %date:~6,4%%date:~3,2%%date:~0,2%
firmscan\wget -q -O "UpdateFirmware_%date:~6,4%%date:~3,2%%date:~0,2%.zip" "http://www.joyetech.com/wp-content/uploads/2016/05/evicvtwomini/win/UpdateFirmware.zip" 2> NUL
for %%F in (UpdateFirmware_*.zip) do if %%~zF equ 0 del "%%F"

pause