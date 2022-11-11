Script to generate commits in the past
--------------------------------------

Instruction manual
------------------

- mkdir mynew && cp commit_x_days_ago.sh $_ && cd $_
- git init
- echo "commit_x_days_ago.sh" >> .git/info/exclude
- ./commit_x_days_ago.sh W X Y Z
- git push

Parameter reference
-------------------

W - number of days ago to start committing
X - number of days ago to stop committing
Y - is random? yes->1, no->0
Z - amount of commits if Y = 0 / max amount of random commits if Y = 1

Usage
-----

./commit_x_days_ago.sh 30 15 1 12

Generates a random amount of {1, .., 12} commits everyday between 30 and 15 days ago.

Why would you do this?
----------------------
 ______________________________
/ You get along very well with \
| everyone except animals and  |
\ people.                      /
 ------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
