#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -d $HOME/bin ];
    then
        cd $HOME/bin
    else
        mkdir $HOME/bin
        cd $HOME/bin
fi

ln -s $DIR/imgMediaQueries.sh imgMediaQueries
echo 'EXPORT PATH=$PATH:$HOME/bin' >> $HOME/.bash_profile
cd -
source $HOME/.bash_profile
echo 'You can use imgMediaQueries from anywhere now.'