Script to generate an X amount of commits every day since Y days ago
-------------------------------------------------------------------

Given X and Y > 0

Instruction manual
------------------

- mkdir mynew && cp commit_x_days_ago.sh $_ && cd $_
- git init
- echo "commit_x_days_ago.sh" >> .git/info/exclude
- ./commit_x_days_ago.sh Y X
- git push


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
