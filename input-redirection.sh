#!/bin/bash

# Create another shell script using a heredoc

# cat heredoccontent > show-info.sh
echo "cat -e <<EOF
The current directory is: \$PWD
The default paths are: \$PATH
The current user is: \$USERNAME
EOF
" > show-info.sh

chmod +x show-info.sh

# The current directory is: current/path/example$
# The default paths are: /first_path:/second_path:/third_path$
# The current user is: your_name$