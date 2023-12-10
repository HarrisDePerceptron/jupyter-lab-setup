#!/bin/bash

SESSIONNAME="lab"
PATH_TO_DIRECTORY="$HOME/jupyter_lab"

tmux has-session -t $SESSIONNAME &>/dev/null

if [ $? != 0 ]; then
	tmux new-session -s $SESSIONNAME -n script -d
	tmux send-keys -t $SESSIONNAME "$PATH_TO_DIRECTORY/run.sh" C-m

	echo "Started new session $SESSIONNAME"
fi

echo "Session $SESSIONNAME already exists"

echo "To attach run: tmux attach $SESSIONNAME"
#tmux attach -t $SESSIONNA
