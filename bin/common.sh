#!/bin/bash
###
# description: Settings that are common for all Gemfire services
###

GEMFIRE=/opt/gemfire/GemFire651
GEMFIRE_WORK=$BASE/work

# Groovy support
GROOVY_LIB_PATH=/opt/local/share/java/groovy/lib
GROOVY_FILES=$GROOVY_LIB_PATH/groovy-1.7.6.jar:$GROOVY_LIB_PATH/asm-3.2.jar

# App classes
APP_CLASSES=$BASE/app/classes

# Authentication support
# TODO: iterate and grab everything in lib
SECURITY_FILES=$BASE/lib/ca-security.jar

CLASSPATH=$GRAILS_TARGET_CLASSES:$SECURITY_FILES:$GROOVY_FILES:$CLASSPATH