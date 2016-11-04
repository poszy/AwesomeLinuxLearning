#!/bin/sh

# This script will search every file in the current directory
# for the string 'awesome'. it will look for every occurence of this string.
# Then prints that out to standard output

for file in *
do
  if grep -q awesome $file
  then 
	echo '************* Seperator'
	echo $file  '<--- File Name'
	
	more $file
	echo '************* End '
  fi
done

exit 0


# Note: This is a really redundant way of searching through text files there are much more simpler ways of doing this
# This is just to show you some of the program control mechanics done with sh

# grep -1 awesome * | more
# ^^^ does the same thing

