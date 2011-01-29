#!/bin/bash
###
# description: Settings that are common for all Gemfire services
###

GEMFIRE=/opt/gemfire/GemFire651
GEMFIRE_WORK=$BASE/work

# Groovy support
GROOVY_LIB_PATH=/opt/local/share/java/groovy/lib
GROOVY_FILES=$GROOVY_LIB_PATH/groovy-1.7.6.jar:$GROOVY_LIB_PATH/asm-3.2.jar

# Authentication support
SECURITY_FILES=$BASE/lib/ca-security.jar

CLASSPATH=$SECURITY_FILES:$GROOVY_FILES:$CLASSPATH