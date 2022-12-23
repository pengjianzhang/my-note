
#!/bin/sh

g_exit=0
trap "g_exit=1" SIGINT

function loop()
{
    while [ $g_exit -eq 0 ];
    do
        echo hi
        sleep 1
    done
}

function array()
{
    ELE_LIST="a b c d e"
    for ELE in ${ELE_LIST[@]}
    do
        echo $ELE
    done
}

function for_loop()
{
    for((i=1;i<=10;i++));
    do
        echo hello
    done
}

#combine 2 lines
function combine_2_lines()
{
    FILE=$1
    sed 'N;s/\n/ :/'  $FILE
}
