#!/bin/bash

#assure the number of arguments are sutiable.
if [ $# -ne 2 ];then
        echo ERROR: two arguments are needed.
        exit 1
fi

# Assign the arguments to variables for ease of use.
WRITESTR="$2"
WRITEFILE="$1"

# Create the directory path if it does not exist
DIRPATH=$(dirname "$WRITEFILE")
if [ ! -d "$DIRPATH" ]; then
    mkdir -p "$DIRPATH"
    if [ $? -ne 0 ]; then
        echo "Error: Could not create the directory $dirpath"
        exit 1
    fi
fi


# create a newfile if it is not exist
touch "$WRITEFILE"

#check if the file created sucessfully.
if [ ! -f "$WRITEFILE" ]; then
    echo "ERROR: Couldn't create the file."
    exit 1
fi

#write or overwirte the file with the provided string
echo "$WRITESTR" > "$WRITEFILE"
