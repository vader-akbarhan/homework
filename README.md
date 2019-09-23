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


How to use: 

0. Make the script executable 
chmod u+x script.sh 

1. Check what tags you already have 
git tag

2. Performs the has the four functions described above  
2.1 When executed without CLI arguments and when the branch checked out is "master": 
./script 
You would find a new tag -- one that contains the current date and time. For example: 
2019-09-23--18-59-42

2.2 If you check out in a new branch and then run the script... 
git checkout -b newbranch
./script 
... Among the tags (git tag) you would find one named after the new branch (for example, "newbranch"). 
2.3 If you give a CLI-argument to the script... 
./script cli-arg
... Among the tags you shall find one with the name of the argument you just passed to the script (for example, "cli-arg"). 
2.4 Since the script thinks of nothing else but tags all the time, it is pushy enough to always try to bring them to where it came from. It tries "git push origin --tags" but you are the one to provide it with the neccessary authenication -- or leave its houses of cards locked within the windless darkness of your local terminal. 

./script.sh
Username for 'https://github.com': your-user@email.tld
Password for 'https://your-user@email.tld@github.com': 

Note: the script can be make quite talkative and interactive but this is not what the homework asked for. 
