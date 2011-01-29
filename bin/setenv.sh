#!/bin/bash
###
# description: Environment-specific settings included into generic gemfire-server script
###

TAG=dev

SERVER_PORT=10401
SERVER_LOG=../logs/cacheserver.log 					# relative to GEMFIRE_WORK
SERVER_PROP_FILE=$BASE/conf/gemfire.properties 		# relative to CWD
SERVER_MEM=6G
SERVER_CACHE_FILE=../conf/cache.xml

LOCATOR_PORT=10301
LOCATOR_LOG=../logs/locator.log
LOCATOR_PROP_FILE=$BASE/conf/gemfire.properties
