#!/bin/bash
if [[ ! -d $PREFIX ]]; then
  PREFIX=/usr
fi

echo " [ 1 ] Removing CLI server files"
if [[ -d $PREFIX/share/s-editor ]]; then
  rm -rf $PREFIX/share/s-editor
fi

echo " [ 2 ] Removing CLI server package"
if [[ -f $PREFIX/bin/s-editor ]]; then
  rm -rf $PREFIX/bin/s-editor
fi

if [[ $1 == "remove-requirments" ]]; then
  echo " [ 3 ] Removing Requirments"
  apt-get remove curl unzip wget git screen python -y
fi
echo "Done."