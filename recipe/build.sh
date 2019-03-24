ln -s $PREFIX/lib/liblapack${SHLIB_EXT} $PREFIX/lib/libopenblas${SHLIB_EXT}
$PYTHON setup.py build_ext -llapack -lblas install
rm $PREFIX/lib/libopenblas${SHLIB_EXT}
