# Use -Dlog4j.debug for Log4J startup debugging info
# Use -Xms512M -Xmx512M to start with 512MB of heap memory. Set size according to your needs.
# Use -XX:+CMSClassUnloadingEnabled -XX:+CMSPermGenSweepingEnabled for PermGen GC

JRE_FOLDER="../jre/bin"
JAVA_CMD="/usr/bin/java"
if [ -d "$JRE_FOLDER" ]; then
    JAVA_CMD="../jre/bin/java"
fi

CPATH="./:lib/*:lib/Jetty/*:extensions/__lib__/*"
${JAVA_CMD} -cp ${CPATH} -Dfile.encoding=UTF-8 -Xms2g -Xmx2g -XX:+UseConcMarkSweepGC -XX:ParallelGCThreads=8 com.smartfoxserver.v2.Main $1 $2
