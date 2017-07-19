motd banner script
---

Bash script for custom motd text banner
- large text
- color
- auto / manual line break
- [**`motd`**](https://en.wikipedia.org/wiki/Motd_(Unix)) auto modification / restore

![banner](https://github.com/rern/banner_script/blob/master/banner.png)  

```
usage:   banner [OPTION] 'STRING'

OPTION:
-c N    - color code              (256 colors mode)
-f file - save to file            (to be used as 'cat output')
-m      - used as 'motd'          (in terminal login screen)
-r      - restore original 'motd'


STRING    a-z (lowercase) : will be converted to uppercase
          ' (single quote): must be escaped and place outside quotes
          | (pipe)        : manual line break position
```

**Download**
```sh
wget -qN --show-progress https://github.com/rern/banner_script/raw/master/banner -P /usr/local/bin; chmod +x /usr/local/bin/banner
```
![chart](https://github.com/rern/banner_script/blob/master/color_chart.png)
