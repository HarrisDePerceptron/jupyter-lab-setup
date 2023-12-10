#!/bin/bash

SESSIONNAME="lab"
tmux has-session -t $SESSIONNAME &>/dev/null

if [ $? == 0 ]; then
	tmux kill-session -t $SESSIONNAME
	echo "Removing tmux session $SESSIONNAME"
else
	echo "Session $SESSIONNAME already closed"
fi
