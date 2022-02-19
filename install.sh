#!/bin/bash
if [[ ! -d $PREFIX ]]; then
  PREFIX=/usr
fi

echo "*** Creating installation dirs ***"
binsDir=$PREFIX/bin
dataDir=$PREFIX/share/s-editor
workDir=$HOME/.s-editor.wdir
host="https://"
mkdir $dataDir $workDir

echo "*** Downloading CLI ***"
wget $host -o $workDir/cli.zip && clear

echo "*** Unzip files ***"
sleep 2 && unzip $dataDir/cli.zip && clear

echo "*** Adding CLI to the system ***"
chmod 777 $workDir/cli/*.sh
mv $workDir/cli/s-editor.sh $binsDir/s-editor
mv $workDir/cli/* $dataDir/scripts
rm -rf $workDir
clear

echo "*** Every thing is done ***"
s-editor