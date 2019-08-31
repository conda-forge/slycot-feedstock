if [[ "$target_platform" == "osx-64" ]]; then
  # Remove when https://github.com/scikit-build/scikit-build/pull/441 lands
  sed -i.bak "s/'-DSLYCOT_VERSION/'-DCMAKE_OSX_DEPLOYMENT_TARGET=$MACOSX_DEPLOYMENT_TARGET', '-DSLYCOT_VERSION/g" setup.py

  # Fix a bug in gfortran 4. (This is fixed in gfortran 7)
  TOOLS_DIR=$(dirname $($FC --print-libgcc-file-name))
  if [[ ! -f "$TOOLS_DIR/ld" ]]; then
    ln -sf $LD $TOOLS_DIR/ld
    ln -sf $LD $BUILD_PREFIX/bin/ld
  fi
fi

$PYTHON setup.py build_ext -llapack -lblas install
