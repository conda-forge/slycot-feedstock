# override scikit-build handling for macOS arm platform on conda-forge cross-compiling
if [ "$target_platform" = "osx-arm64" ]; then
  export CMAKE_OSX_ARCHITECTURES="arm64"
fi

export SKBUILD_CONFIGURE_OPTIONS="-DBLA_VENDOR=Generic"

which f2py3
f2py3 -h

$PYTHON -m pip install -v .
