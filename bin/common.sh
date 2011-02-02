#!/bin/bash
###
# description: Settings that are common for all Gemfire services
###

source $BASE/conf/setenv.sh

GEMFIRE_WORK=$BASE/work

# App classes
APP_CLASSES=$BASE/app/classes:$APP_JARS

# Authentication support
# TODO: iterate and grab everything in lib
SECURITY_FILES=$BASE/lib/security.jar

CLASSPATH=$APP_CLASSES:$SECURITY_FILES:$GROOVY_FILES:$CLASSPATH