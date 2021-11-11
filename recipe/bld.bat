:: correct FC, apparently pointed to host prefix??
￼set FC=%BUILD_PREFIX%\Library\bin\flang.exe
set BLAS_ROOT=%PREFIX%
set LAPACK_ROOT=%PREFIX%

"%PYTHON%" setup.py install -G "NMake Makefiles" -DBLA_VENDOR=Generic

if errorlevel 1 exit 1
