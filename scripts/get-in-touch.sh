#!/bin/sh

array=( 
    KakaoTalk 
    LINE 
    Mail 
    Calendar
    Slack
)

for i in "${array[@]}"
do
open -a $i
done
