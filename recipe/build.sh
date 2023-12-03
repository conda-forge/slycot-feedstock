# override scikit-build handling for macOS arm platform on conda-forge cross-compiling
if [ "$target_platform" = "osx-arm64" ]; then
  export CMAKE_OSX_ARCHITECTURES="arm64"
fi
# fix scikit-build not finding the cross-compile python headers.
if [ "$target_platform" != "$build_platform" ]; then
  crosspython="-DPython_FIND_VIRTUALENV=ONLY"
fi

# fix entry_point -- https://github.com/conda-forge/numpy-feedstock/issues/276
# Uses the python inside the pip build environment
cat > myf2py.sh <<EOF
#!/bin/sh
python -m numpy.f2py.__main__ \$@
EOF
chmod +x myf2py.sh
export SKBUILD_CONFIGURE_OPTIONS="-DBLA_VENDOR=Generic -DF2PY_EXECUTABLE=$PWD/myf2py.sh $crosspython"

$PYTHON -m pip install -v .
