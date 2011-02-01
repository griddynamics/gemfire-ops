#!/bin/bash
###
# description: Environment-specific settings included into generic gemfire-server script
###

TAG=dev

GEMFIRE=/opt/gemfire/GemFire651

# Cacheserver
SERVER_PORT=10401
SERVER_LOG=$BASE/logs/cacheserver.log
SERVER_PROP_FILE=$BASE/conf/gemfire.properties
SERVER_MEM=6G
SERVER_CACHE_FILE=$BASE/app/cache.xml

# Locator
LOCATOR_PORT=10301
LOCATOR_LOG=$BASE/logs/locator.log
LOCATOR_PROP_FILE=$BASE/conf/gemfire.properties

# JMX Agent
AGENT_HTTP_PORT=10801
AGENT_RMI_PORT=10901
AGENT_LOG=$BASE/logs/agent.log
AGENT_PROP_FILE=$BASE/conf/gemfire.properties

# Groovy support
GROOVY_LIB_PATH=/opt/local/share/java/groovy/lib
GROOVY_FILES=$GROOVY_LIB_PATH/groovy-1.7.6.jar:$GROOVY_LIB_PATH/asm-3.2.jar

# App classes; will be added to the CLASSPATH
APP_JARS=
