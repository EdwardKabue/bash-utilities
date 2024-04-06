#! /bin/bash

#Supply the destination folder for the class file followed by a space and the source file as command line arguments to this script.

sourcefile="$2"

#remove the file extension
outputclass="${sourcefile%.*}"

echo "Source file $2"

echo "Destination class folder $1"

javac -d $1 $2

echo "Output class file: $outputclass"

#Run the file
java -cp $1 $outputclass