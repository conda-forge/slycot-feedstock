# debug line
which cmake
$BUILD_PREFIX/bin/cmake --version
cmake --version
echo "OK"
#
$PYTHON setup.py build_ext install -- \
        -DNumPy_INCLUDE_DIR=${SP_DIR}/numpy/core/include \
        -DBLA_VENDOR=Generic
