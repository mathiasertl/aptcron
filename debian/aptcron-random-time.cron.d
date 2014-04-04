# Run aptcron at a random time of day using the "at" command.
# 
# NOTE: In the off-chance that the random time is 0:00, aptcron might actually
#       run the next day.
SHELL=/bin/bash

# m h dom mon dow user  command
0 0     * * *   root    at -f aptcron $(($RANDOM \% 24)):$(($RANDOM \% 60))
