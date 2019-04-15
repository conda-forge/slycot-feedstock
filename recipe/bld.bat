set BLAS_ROOT=%PREFIX%
set LAPACK_ROOT=%PREFIX%

"%PYTHON%" setup.py install

if errorlevel 1 exit 1
