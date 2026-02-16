#! /bin/bash

# whoami # ask the system directly
# echo "The user is: $USER" # user running the script (ask shell)
# echo "The user is: $USERNAME" # user running the script. windows
# logname # login name associated with the session

echo "Hello ${USER:-$(whoami)}!"    # USER with fallback to whoami
