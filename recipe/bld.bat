set BLAS_ROOT=%PREFIX%
set LAPACK_ROOT=%PREFIX%

:: correct FC, apparently pointed to host prefix??
set FC=%BUILD_PREFIX%\Library\bin\flang.exe

if exist %BUILD_PREFIX%\Scripts\f2py.exe (
  set F2PY=%BUILD_PREFIX%\Scripts\f2py.exe
) else (
  set F2PY=%BUILD_PREFIX%\Scripts\f2py.bat
)

"%PYTHON%" setup.py install

if errorlevel 1 exit 1
