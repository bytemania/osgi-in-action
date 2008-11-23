@ECHO OFF

SET _EXAMPLE_DIR_=%~dp0
SET _EXAMPLE_BSN_=org.foo.hello.lifecycle
SET _EXAMPLE_VER_=1.0

SET _EXAMPLE_JAR_=%_EXAMPLE_BSN_%-%_EXAMPLE_VER_%.jar

pushd %_EXAMPLE_DIR_%\lifecycle

IF NOT EXIST %_EXAMPLE_BSN_%/target/%_EXAMPLE_JAR_% CALL mvn install

CALL mvn pax:provision

popd

@ECHO ON