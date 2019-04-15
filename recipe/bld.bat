set BLAS_ROOT=%PREFIX%
set LAPACK_ROOT=%PREFIX%

:: correct FC, apparently pointed to host prefix??
set FC=%BUILD_PREFIX%\Library\bin\flang.exe

"%PYTHON%" setup.py install

if errorlevel 1 exit 1
