#!/bin/bash
###
# description: Environment-specific settings included into generic gemfire-server script
###

TAG=dev

SERVER_PORT=10401
SERVER_LOG=$BASE/logs/cacheserver.log
SERVER_PROP_FILE=$BASE/conf/gemfire.properties
SERVER_MEM=6G
SERVER_CACHE_FILE=$BASE/conf/cache.xml

LOCATOR_PORT=10301
LOCATOR_LOG=$BASE/logs/locator.log
LOCATOR_PROP_FILE=$BASE/conf/gemfire.properties
