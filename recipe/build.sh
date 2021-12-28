# override scikit-build handling for macOS arm platforn on conda-forge cross-compiling
echo $target_platform
if [ "$target_platform" = "osx-arm64" ]; then
  export CMAKE_OSX_ARCHITECTURES="arm64"
fi
echo $CMAKE_OSX_ARCHITECTURES
$PYTHON setup.py build_ext install -- \
        -DBLA_VENDOR=Generic
