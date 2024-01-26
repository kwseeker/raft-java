#!/usr/bin/env bash

jps -lm | grep ServerMain | awk '{print $1}' | xargs kill -9
sleep 5

#清除数据
# shellcheck disable=SC2164
cd ./env
rm -rf example*/data example*/logs
rm -f example*/nohup.out
# shellcheck disable=SC2164
# shellcheck disable=SC2103
cd -
