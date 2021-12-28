# override scikit-build handling for macOS arm platforn on conda-forge cross-compiling
echo $target_platform
if [ "$target_platform" = "osx-arm64" ]; then
  export MACOSX_DEPLOYMENT_TARGET="arm64"
fi
echo $MACOSX_DEPLOYMENT_TARGET
$PYTHON setup.py build_ext install -- \
        -DBLA_VENDOR=Generic
