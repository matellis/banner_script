motd banner script
---

![banner](https://github.com/rern/banner_script/blob/master/banner.png)  

```
usage:   banner [OPTION] 'STRING'

OPTION:
-c N    - color code (256 colors mode)
-f file - save to file (to be used as 'cat output')
-m      - used as 'motd' in terminal login screen
-r      - restore original 'motd'

STRING  - all characters will be converted to uppercase
```

**Download**
```sh
wget -qN --show-progress https://github.com/rern/banner_script/raw/master/banner -P /usr/local/bin; chmod +x /usr/local/bin/banner
```
![chart](https://github.com/rern/banner_script/blob/master/color_chart.png)
