motd banner script
---

Bash script for custom motd text banner
- large text
- color
- auto / manual line break
- [**`motd`**](https://en.wikipedia.org/wiki/Motd_(Unix)) auto modification / restore

![banner](https://github.com/rern/banner_script/blob/master/banner.png)  

```
usage:   banner [OPTION]... 'STRING'

OPTION:
--color   display color chart
-b N      N - background color code ('0' black - default)
-c N      N - character color code  ('7' light gray - default)
-f FILE   save to FILE              (to be used as 'cat file')
-m        used as 'motd'            (in terminal login screen)
-r        restore original 'motd'
-t C      C - character             ('#' default)

STRING    a-z (lowercase) : will be converted to uppercase
          ' (single quote): must be escaped and place outside quotes
          | (pipe)        : manual line break position
```

**Download**
```sh
wget -q --show-progress https://github.com/rern/banner_script/raw/master/banner -O /usr/local/bin/banner; chmod +x /usr/local/bin/banner
```
![chart](https://github.com/rern/banner_script/blob/master/color_chart.png)
