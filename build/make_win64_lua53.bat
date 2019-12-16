mkdir build64 & pushd build64
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" ..
IF %ERRORLEVEL% NEQ 0 cmake  -G "Visual Studio 15 2017 Win64" ..
popd
cmake --build build64 --config Release
md plugin_lua53\Plugins\x86_64
copy /Y build64\Release\xlua.dll plugin_lua53\Plugins\x86_64\xlua.dll
pause