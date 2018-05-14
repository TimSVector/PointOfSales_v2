
source setenv.sh

pushd $PWD/CurrentRelease/vcast-workarea/vc_manage

$VECTORCAST_DIR/vcastqt -lc -e PointOfSales_Manage &

popd
