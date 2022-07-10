# override scikit-build handling for macOS arm platforn on conda-forge cross-compiling
if [ "$target_platform" = "osx-arm64" ]; then
  export CMAKE_OSX_ARCHITECTURES="arm64"
fi

export SKBUILD_CONFIGURE_OPTIONS="-DBLA_VENDOR=Generic"
$PYTHON -m pip install -v .
