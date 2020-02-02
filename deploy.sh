./sfs2x-service stop
SRC_CODE=/cok/
#svn update $SRC_CODE
gradle -b $SRC_CODE/build.gradle build -x test
cp $SRC_CODE/cok-common/build/libs/*.jar extensions/__lib__
cp $SRC_CODE/cok-game/build/libs/*.jar extensions/COK1
cp $SRC_CODE/cok-web/build/libs/*.war www/
./sfs2x-service start
tail -f logs/smartfox.log
