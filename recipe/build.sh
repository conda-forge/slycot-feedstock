if [[ "$target_platform" == "osx-64" ]]; then
    # Remove when https://github.com/scikit-build/scikit-build/pull/441 lands
    sed -i.bak "s/'-DSLYCOT_VERSION/'-DCMAKE_OSX_DEPLOYMENT_TARGET=$MACOSX_DEPLOYMENT_TARGET', '-DSLYCOT_VERSION/g" setup.py
fi

$PYTHON setup.py build_ext -llapack -lblas install
