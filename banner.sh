#!/bin/bash

### Banner with color ###
# by rern

usage() {
echo -e "
\e[36m---------------------------------------------------------\e[0m
usage: ./banner.sh [OPTION] "STRING"
\e[36m---------------------------------------------------------\e[0m
OPTION:
-c N    - color code (256 colors mode)
-f file - save to file (to be used as 'cat output')
-m      - used as 'motd' in terminal login screen
-r      - restore original 'motd'

STRING  - all characters will be converted to uppercase
\e[36m---------------------------------------------------------\e[0m"
}

A1='  #  '
A2=' # # '
A3='#   #'
A4='#####'
A5='#   #'

B1='#### '
B2='#   #'
B3='#### '
B4='#   #'
B5='#### '

C1=' ### '
C2='#   #'
C3='#    '
C4='#   #'
C5=' ### '

D1='#### '
D2='#   #'
D3='#   #'
D4='#   #'
D5='#### '

E1='#####'
E2='#    '
E3='###  '
E4='#    '
E5='#####'

F1='#####'
F2='#    '
F3='###  '
F4='#    '
F5='#    '

G1=' ####'
G2='#    '
G3='#  ##'
G4='#   #'
G5=' ####'

H1='#   #'
H2='#   #'
H3='#####'
H4='#   #'
H5='#   #'

I1=' ### '
I2='  #  '
I3='  #  '
I4='  #  '
I5=' ### '

J1='  ###'
J2='    #'
J3='    #'
J4='#   #'
J5=' ### '

K1='#   #'
K2='#  # '
K3='###  '
K4='#  # '
K5='#   #'

L1='#    '
L2='#    '
L3='#    '
L4='#    '
L5='#####'

M1='#   #'
M2='## ##'
M3='# # #'
M4='#   #'
M5='#   #'

N1='#   #'
N2='##  #'
N3='# # #'
N4='#  ##'
N5='#   #'

O1=' ### '
O2='#   #'
O3='#   #'
O4='#   #'
O5=' ### '

P1='#### '
P2='#   #'
P3='#### '
P4='#    '
P5='#    '

Q1=' ### '
Q2='#   #'
Q3='# # #'
Q4='#  # '
Q5=' ## #'

R1='#### '
R2='#   #'
R3='#### '
R4='#  # '
R5='#   #'

S1=' ####'
S2='#    '
S3=' ### '
S4='    #'
S5='#### '

T1='#####'
T2='  #  '
T3='  #  '
T4='  #  '
T5='  #  '

U1='#   #'
U2='#   #'
U3='#   #'
U4='#   #'
U5=' ### '

V1='#   #'
V2='#   #'
V3='#   #'
V4=' # # '
V5='  #  '

W1='#   #'
W2='#   #'
W3='# # #'
W4='## ##'
W5='#   #'

X1='#   #'
X2=' # # '
X3='  #  '
X4=' # # '
X5='#   #'

Y1='#   #'
Y2=' # # '
Y3='  #  '
Y4='  #  '
Y5='  #  '

Z1='#####'
Z2='   # '
Z3='  #  '
Z4=' #   '
Z5='#####'

n11='  #  '
n12=' ##  '
n13='  #  '
n14='  #  '
n15=' ### '

n21=' ### '
n22='#   #'
n23='   # '
n24=' #   '
n25='#####'

n31=' ### '
n32='#   #'
n33='   # '
n34='#   #'
n35=' ### '

n41='   # '
n42='  ## '
n43=' # # '
n44='#####'
n45='   # '

n51='#### '
n52='#    '
n53='#### '
n54='    #'
n55='#### '

n61=' ### '
n62='#    '
n63='#####'
n64='#   #'
n65=' ### '

n71='#####'
n72='   # '
n73='  #  '
n74=' #   '
n75=' #   '

n81=' ### '
n82='#   #'
n83=' ### '
n84='#   #'
n85=' ### '

n91=' ### '
n92='#   #'
n93=' ####'
n94='    #'
n95=' ### '

sp1='     '
sp2='     '
sp3='     '
sp4='     '
sp5='     '

ss1='    #'
ss2='   # '
ss3='  #  '
ss4=' #   '
ss5='#    '

sm1='     '
sm2='     '
sm3=' ### '
sm4='     '
sm5='     '

sd1='     '
sd2='     '
sd3='     '
sd4='  #  '
sd5='  #  '

sc1='     '
sc2='     '
sc3='     '
sc4=' ##  '
sc5='  #  '

sl1='  #  '
sl2=' #   '
sl3=' #   '
sl4=' #   '
sl5='  #  '

sr1='  #  '
sr2='   # '
sr3='   # '
sr4='   # '
sr5='  #  '

sq1=' ### '
sq2='#   #'
sq3='  ## '
sq4='     '
sq5='  #  '

sx1='  #  '
sx2='  #  '
sx3='  #  '
sx4='     '
sx5='  #  '

sh1=' #  # '
sh2='######'
sh3=' #  # '
sh4='######'
sh5=' #  # '

color=7
file=''
motd=0
while :; do
	case $1 in
		-c) color=$2
			shift;;
		-f) file=$2
			shift;;
		-m) motd=1;;
		-r) if [[ ! -f /etc/banner ]]; then
				echo "No custom 'motd' found"
				exit
			fi
			[[ -f /etc/banner ]] && rm /etc/banner
			[[ -f /etc/profile.d/motd.sh ]] && rm /etc/profile.d/motd.sh
			sed -i '\|cat /etc/banner|d' /etc/profile
			mv /etc/motd{.original,}
			cat /etc/motd
			echo "Relogin to see this original 'mtod'"
			exit
			;;
		-h|-\?|--help) usage
			exit;;
		-?*) echo "unknown option: $1"
			echo "'banner -h'for information"
			echo
			exit;;
		*) break
	esac
	shift
done

string=${@^^}
# string to array
for (( i=0 ; i < ${#string} ; i++ )); do
	st=${string:i:1}
	case "$st" in
		[1-9]) st="n$st";;
		0) st='O';;
		' ') st='sp';;
		'/') st='ss';;
		'-') st='sm';;
		'.') st='sd';;
		',') st='sc';;
		'?') st='sq';;
		'!') st='sx';;
		'#') st='sh';;
		'(') st='sl';;
		')') st='sr';;
		[^A-Z,a-z]) st='sp';;
	esac
	ar1[i]=${st}1
	ar2[i]=${st}2
	ar3[i]=${st}3
	ar4[i]=${st}4
	ar5[i]=${st}5
done

# arrayN to line composite
l1=""; l2=""; l3=""; l4=""; l5=""
for (( i=0 ; i < ${#string} ; i++ )); do
	l1=$l1"${!ar1[i]} "
	l2=$l2"${!ar2[i]} "
	l3=$l3"${!ar3[i]} "
	l4=$l4"${!ar4[i]} "
	l5=$l5"${!ar5[i]} "
done

# output
banner="\e[38;5;${color}m
$l1
$l2
$l3
$l4
$l5
\e[0m"

if [[ $file ]]; then
	echo -e "$banner" | tee $file
	echo -e "cat $file \e[38;5;240m# to display the banner\e[0m"
elif [[ $motd ]]; then
	echo -e "$banner" | tee /etc/banner
	if [[ -d /etc/profile.d ]]; then
		echo -e '#!/bin/bash\ncat /etc/banner' > /etc/profile.d/motd.sh
		chmod +x /etc/profile.d/motd.sh
	else
		echo 'cat /etc/banner' >> /etc/profile
	fi
	mv /etc/motd{,.original}
	echo "Relogin to see new 'mtod' banner"
else
	echo -e "$banner"
fi

echo
