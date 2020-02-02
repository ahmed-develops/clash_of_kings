@echo off
set SFS_HOME="D:\COK\server\smartfoxserver\SFS2X"
set COK_HOME="D:\COK\server\ClashOfKingProject"

call gradle -b %COK_HOME%\build.gradle build

copy %COK_HOME%\cok-common\build\libs\*.jar %SFS_HOME%\extensions\__lib__
copy %COK_HOME%\cok-game\build\libs\*.jar %SFS_HOME%\extensions\COK4
copy %COK_HOME%\cok-web\build\libs\*.war %SFS_HOME%\www

call %SFS_HOME%\sfs2x

pause