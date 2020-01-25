export LDFLAGS="$LDFLAGS -v"
if [[ "$target_platform" == osx-64 ]]; then
  export LDFLAGS="$LDFLAGS --sysroot=$CONDA_BUILD_SYSROOT"
fi
# Add a openblas link to avoid linking to accelerate and other system libraries.
ln -s $PREFIX/lib/liblapack${SHLIB_EXT} $PREFIX/lib/libopenblas${SHLIB_EXT}
$PYTHON setup.py build_ext -llapack -lblas install
rm $PREFIX/lib/libopenblas${SHLIB_EXT}
