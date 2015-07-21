#!/usr/bin/env bash

#isLayout() {
    #local layout=$1
    #echo $(

    #)
#}

#vsplit=$(isLayout "vsplit")
#hsplit=$(isLayout "hsplit")
result=$(vifm -c "echo layoutis('vsplit')")
#if [ "$result" = "1" ]
#then
    #echo 'okk'
    #layout="vsplit"
#elif [ $hsplit -eq 1 ]
#then
    #layout="hsplit"
#else
    #layout="only"
#fi
#echo $(vifm --remote -c "wincmd l")
#vifm --remote -c 'echo layoutis("vsplit")'
#echo $(
    #isLayout "only"
#)
#echo $layout
