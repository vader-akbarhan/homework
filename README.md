# homework
Homework -- shell script for working with Git tags. 

The script (after being made executable :D): 
1. Creates a lightweight tag containing the current date and time 

The official way of denoting time uses the colon symbol: 
https://en.wikipedia.org/wiki/ISO_8601#Times
However Git tags cannot contain a colon as well as space: 
https://git-scm.com/docs/git-check-ref-format
This is why I have used en dashes instead of colons. 
After several technical experiments and aesthetic considerations, I also separated the date from the time by the use of two consecutive en dashes.

2. If the current branch is not "master", the script creates a tag containing the name of the current branch 

3. If the user provides a command-line argument to the bash script, it creates a tag with it 
./script.sh tag-supplied-as-argument

4. All the tags are pushed to "origin" (the remote repo) 
