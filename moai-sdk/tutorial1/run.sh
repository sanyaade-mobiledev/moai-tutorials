#!/bin/bash
MOAI_BIN=/Users/$USER/moai-sdk/bin/osx
MOAI_CONFIG=/Users/$USER/moai-sdk/samples/config

cd `dirname $0`
${MOAI_BIN}/moai "${MOAI_CONFIG}/config.lua" "main.lua"