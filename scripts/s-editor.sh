#!/bin/bash
if [[ ! -d $PREFIX ]]; then
  PREFIX=/usr
fi
host="https://"
while getopts p:v: flag
do
    case "${flag}" in
        p) p=${OPTARG};;
        v) v=${OPTARG};;
    esac
done

if [[ ! $p ]]; then
  p=8080
fi

if [[ $1=="check-cli" ]]; then
  bash $PREFIX/share/s-editor/scripts/c-cli.sh
elif [[ $1=="check-project" ]]; then
  bash $PREFIX/share/s-editor/scripts/c-project.sh
elif [[ $1=="run" ]]; then
  bash $PREFIX/share/s-editor/scripts/run.sh $p
elif [[ $v ]]; then
  echo "CLI v1.1"
else
  cat $PREFIX/share/s-editor/scripts/usage.txt
fi