# override scikit-build handling for macOS arm platforn on conda-forge cross-compiling
if [ $target_platform = "osx-arm4" ]; then
  export MACOSX_DEPLOYMENT_TARGET="arm64"
fi
$PYTHON setup.py build_ext install -- \
        -DBLA_VENDOR=Generic
