#!/bin/bash
# textadv.sh

# NOTABLE DEV NOTE: make improvements to the auto-updater for the game

# Character #1
# Evelyn:
#
# DEV NOTE: add a neko catgirl maid to the game, make particular mention of her
#  cat ears, tail, and other cat features, etc. her name is Evelyn.
#
# she is white.
#
# she has red (as in, apple, not ginger) hair [as in, around #9a4447] which flows down her back to around butt level
# and also surrounds her face, flowing down to just below shoulder level, green eyes, 
# a collar with bell, cat ears with fluff.
#
# she has black cat whiskers.
#
# a little adorable red bow under her collar, too.
#
# she loves headpats. she's 23, like me.
#
# she is 5 foot 4.
#
# she's not fat. 
# you'd not even call her chubby. she isn't thin. but she's not too chubby at all. a healthy weight.
# she's 135 lbs.
#
# she's positive and happy generally, unless it's appropriate that she not be. 
# not overly so, she's just good mindset. smiles often.
# 
# of course she wears the traditional maid dress.
#
# get real HD art of her commissioned some day, based on the descriptions you will write for her in the game.
#
# =====================================================================================================================

# Save some errors if you're zoey, do nothing if you're not
cd
cd ./Working/textadv.sh/

# Attempt to fix the user from their own mistake
cd
cd textadv.sh
cd Working
cd textadv.sh

# Save the user's game start to a log for debugging purposes.
clear
cd "$(dirname "$0")"
# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER


# prep
clear
force_color_prompt=yes
tput clear
tput cup 0 0
echo -e '\e[0;00m'
bash bag-art-convert.sh
echo -e '\e[0;00m'
clear

# Lang same throughout whole game
LANG=C
LOCALE=C
LC_ALL=C
export LANG=C
export LOCALE=C
export LC_ALL=C

# We're not updating right this moment.
UPDATESEQUENCE=0
export UPDATESEQUENCE=0

# To help the logging system
EVERREADY=0

# updater workability test
cd "$(dirname "$0")"
UPDATECOMPAREPATH=$(basename "$PWD")
UPDATECOMPAREPATHGREP=$(echo $UPDATECOMPAREPATH | grep main)
if [ "$UPDATECOMPAREPATHGREP" = "textadv.sh-main" ]; then
clear && echo "The game was installed incorrectly and will not function." && echo "Please follow the install instructions in README.md" && echo "" && exit
fi


# release number and name
DEVFULLRELEASENAME="textadv.sh - a bash text adventure by Novimatrem (version v44a)"
MOJANGNAME="zlauncherv3"

cd "$(dirname "$0")"
clear

# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*

# trans pride
# meow


# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*

sleep 0s    


# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*

    
# Clear screen, set color
clear
force_color_prompt=yes
tput clear
tput cup 0 0
echo -e '\e[0;00m'
bash bag-art-convert.sh
echo ""
echo -e '\e[0;00m'
clear
echo -ne "\e]0;bash text adventure\a"
#Set title of cmd window
echo -ne "\e]0;bash text adventure\a"

qsim=?
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

# Print term size test screens.
# Check forcefully that we're at least the right size at a minimum
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

# Ensure the window is the correct size.
clear
sleep 0s
# skip cali because dev?
#echo "Skip calibration because you're a developer doing testing? (y/n)"
#echo "(NOT RECOMMENDED, JUST PRESS ENTER)"
#echo ""
#read skipcosdev
if [[ $skipcosdev == y* ]]; then
    qsim=devcheats?
    echo "hi zoey"
    echo "Will skip to main game."
else
    :
fi

echo ""
if [[ $skipcosdev == y* ]]; then
    qsim=devcheats?
    echo "skipping."
else
    clear && echo "$UPDATECOMPAREPATHGREP" && echo "" && echo "" && echo "" && echo "" && echo "" && echo ""
fi



clear
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

sleep 0s
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi
clear

# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*


# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*

if [[ $skipcosdev == y* ]]; then
    echo "skip to main game"
else
    sleep 0s
fi
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

sleep 0s
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 0s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi
clear
sleep 0s
# Ideal Terminal size alignment calibration screen
clear
echo -ne "o------------------------------------------------------------------------------o"
echo -ne "|                                                                              |"
echo -ne "| $DEVFULLRELEASENAME              |" # BE SURE TO ACCOMODATE FOR THE SPACING OF THIS STRING HERE BY ADDING/REMOVING SPACES
echo -ne "|                                                                              |"
echo -ne "| You'll need to read this:                                                    |"
echo -ne "|                                                                              |"
echo -ne "| The 'border' of this terminal should be an ASCII character square.           |"
echo -ne "| If this is not the case your Terminal is configured or sized incorrectly.    |"
echo -ne "| Use a monpspaced font, with the terminal dimensions set to 80x24 characters. |"
echo -ne "|                                                                              |"
echo -ne "| If you fail to do so, the pixel art renderer will fail to work correctly,    |"
echo -ne "| and you may experience abnormal behaviour of the Terminal during play.       |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"
echo -ne "|                                                                              |"

while true; do
    read -rep '| Start game? (Type y, then Enter)                                             |
|                                                            (awaiting input)  |
o-----------------------------------------------------------------------------' yns
    case $yns in
        [Yy]* ) break;;
        * ) true ;;
    esac
done
echo -ne "|                                                                              |"
echo -ne ""

if [[ $skipcosdev == y* ]]; then
    echo "skip to main game"
else
    sleep 0s
    sleep 0s
fi
clear
sleep 0.166s
echo ""
if [[ $skipcosdev == y* ]]; then
    echo "skip to main game"
else
    echo ""
fi
clear
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

sleep 0.166s
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
echo "Closing."
echo ""
exit
fi
clear
sleep 0.166s

# Enable printing description text
PRINTINFO=1

# Set all inventory items as you wish them.
EATENCAKE=0
DRANKMILKSHAKE=0
EATENPAINTING=0

# Initial variable
WGPLAYERCURRENTWEIGHT=130
TURNCOUNTER=0
TURNCOUNTER="$(($TURNCOUNTER + 0))" 

# Begin what the user experiences
echo $DEVFULLRELEASENAME
echo "'$MOJANGNAME'"
echo ""
echo -e "Welcome! Type '\e[1;32;4;1mcredits\e[0m' to see the developers/contributors."
echo -e "Regular text-adventure game commands like '\e[1;32;4;1mlook\e[0m' work here."
echo -e "Use '\e[1;32;4;1mlook\e[0m' to see the room, and '\e[1;34;4;1mlook at cake\e[0m' (example), to inspect an object."

echo ""


# DEBUG: SET ROOMID
ROOMID=5

# This entire game is a biig loop.
while true; do



# Check we remain the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

# Continue to ensure we're at the right size
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
fi


# hp system
hp=$(echo $hp)
maxhp=$(echo $maxhp)
minhp=0

# If max HP is not defined, set current and max HP to 20 as the starter hp
if [ -z "${maxhp}" ]; then
  hp=20
fi

if [ -z "${maxhp}" ]; then
  maxhp=20
fi

# Make sure HP can't go higher than max.
if ((hp >= $maxhp+1)); then
  hp="$(echo $maxhp)"
fi

# Make sure HP can't go lower than min.
if ((hp <= $minhp)); then
  hp="$(echo $minhp)"
fi

# Heal 1hp per turn, passively, if injured.
if ((hp < $maxhp)); then
  hp=$(($hp+1)) && echo "You rest up a bit, recovering some HP."
fi

# wg system
WGPLAYERWEIGHTHIGHCAP=2601
WGPLAYERWEIGHTZOEYMATCH=716
WGPLAYERWEIGHTZOEYSONAMATCH=1863
WGPLAYERWEIGHTLOWCAP=129
WGPLAYERCURRENTWEIGHT=$(echo $WGPLAYERCURRENTWEIGHT)
WGPLAYERWEIGHTSYMBOL=lbs
WEIGHTRANK1="normal weight."
WEIGHTRANK2="fat."
WEIGHTRANK3="overweight."
WEIGHTRANK4="obese."
WEIGHTRANK5="morbidly obese."
WEIGHTRANK6="very severely obese."
WEIGHTRANK7="extremely heavily severely morbidly obese."



# Checks for weight bounds

# If you are greater than or equal to 129lbs but less than or equal to 130 lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 129 && WGPLAYERCURRENTWEIGHT <= 130)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK1)"
fi
# If you are less than or equal to 129lbs, then.
if ((WGPLAYERCURRENTWEIGHT <= 129)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK1)" && WGPLAYERCURRENTWEIGHT=129
fi


# Start with the gained weights, ported from old game

# VERY WIP, STILL BEING DEVELOPED AND TWEAKED.

# these values are for a weight gain description mechanic in a fun heckin cute gaining game, not my actual opinion

# If you are greater than or equal to 131lbs, but less than or equal to 259lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 131 && WGPLAYERCURRENTWEIGHT <= 259)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK1)"
fi

# If you are greater than or equal to 260lbs, but less than or equal to 399lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 260 && WGPLAYERCURRENTWEIGHT <= 399)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK5)"
fi

# If you are greater than or equal to 400lbs, but less than or equal to 524lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 400 && WGPLAYERCURRENTWEIGHT <= 524)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK6)"
fi


# If you are greater than or equal to 525lbs, but less than or equal to 699lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 525 && WGPLAYERCURRENTWEIGHT <= 699)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK6)"
fi

# If you are greater than or equal to 700lbs, then.
if ((WGPLAYERCURRENTWEIGHT >= 700)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK7)"
fi
# still a lot more weights to add, and to shuffle around numbers.

# VERY WIP, STILL BEING DEVELOPED AND TWEAKED.
# these values are for a weight gain description mechanic in a fun heckin cute gaining game, not my actual opinion


# etc etc, port from the old batch:


#
#
#if %weight% LEQ 1400 set WEIGHTRANKING=%weightrankSECRET%
#
#if %weight% LEQ 1064 set WEIGHTRANKING=%weightrankSECRET%
#
#if %weight% LEQ 771 set WEIGHTRANKING=%weightrankSECRET%
#
#if %weight% LEQ 759 set WEIGHTRANKING=%weightranksob%
#
#if %weight% LEQ 300 set WEIGHTRANKING=%weightranksob%
#
#if %weight% LEQ 290 set WEIGHTRANKING=%weightrank5%
#
#if %weight% LEQ 270 set WEIGHTRANKING=%weightrank5%
#
#if %weight% LEQ 240 set WEIGHTRANKING=%weightrank4%
#
#if %weight% LEQ 210 set WEIGHTRANKING=%weightrank3%
#
#if %weight% LEQ 190 set WEIGHTRANKING=%weightrank2%
#
#if %weight% LEQ 170 set WEIGHTRANKING=%weightrank1%
#
#if %weight% LEQ 159 set WEIGHTRANKING=%weightrankerrorlow%
#
#


# /End of the set weights

# Max cap
if ((WGPLAYERCURRENTWEIGHT >= 2601)); then
  WEIGHTRANKTODISPLAY="$(echo $WEIGHTRANK7)" && WGPLAYERCURRENTWEIGHT=2601
fi


if [ "$DEVDISPLAYWEIGHTNOWTEST" = "1" ]; then
  qsim=devcheats?
  echo "DEBUGThis makes you:" && echo $WEIGHTRANKTODISPLAY;
  PRINTINFO=0
  DEVDISPLAYWEIGHTNOWTEST=0
fi

# It's a whole new turn!

TURNCOUNTER="$(($TURNCOUNTER + 1))" 

# ---

if [ "$EVERREADY" = "0" ]; then
# Ready state log

EVERREADY=1

# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER

fi

# Set the scene based on what we know, if it's the time we do that.

# ROOMID 5, Cafe -------------------------------------------------#
if [ "$ROOMID" = "5" ]; then
if [ "$PRINTINFO" = "1" ]; then
  echo "You find yourself inside a cafe.";
  echo -e "You can see a side-door that's open to a sunny-looking \e[1;33;4;1mgarden\e[0m."
  if [ "$EATENCAKE" = "0" ]; then
  echo -e "There is a \e[1;34;4;1mcake\e[0m.";
fi
if [ "$DRANKMILKSHAKE" = "0" ]; then
  echo -e "There's a \e[1;34;4;1mmilkshake\e[0m.";
fi

echo -e "On the nearby wall, there's a \e[1;34;4;1mpainting\e[0m.";



fi
fi
#=================================================================#

# ROOMID 6, Garden -------------------------------------------------#
if [ "$ROOMID" = "6" ]; then
if [ "$PRINTINFO" = "1" ]; then
  echo "It's a beautiful garden. Flowers are around.";
  echo -e "You can see a side-door of the cafe, your prior \e[1;33;4;1mseat\e[0m is visible indoors."
fi
fi
#=================================================================#



# ROOMID 69, zlauncher -------------------------------------------------#
if [ "$ROOMID" = "69" ]; then
PRINTINFO=1
if [ "$PRINTINFO" = "1" ]; then

while true;
do
clear 
  echo -e "\e[0m\e[101mzlauncher v3                                                                    \e[0m"
  echo ""
  echo -e "\e[104m1: firefox\e[0m \e[104m2: featherpad\e[0m \e[104m3: pavucontrol\e[0m \e[104m4: taskmgr\e[0m \e[104m5: gimp\e[0m \e[104m6: guvcview\e[0m"
  echo ""
  echo -e "\e[104m7: screenshot\e[0m \e[100m8: Instagram\e[0m" 
  echo -e "                             \e[100m- Create a YouTube video / LIVEstream / LIVEclip?\e[0m"
  echo -e "\e[104m9: steam (online)\e[0m            \e[100m- Post an image/reel to Instagram?\e[0m"
  echo -e ""
  echo -e "\e[104m10: steam (no net)\e[0m \e[104m11: minecraft\e[0m \e[104m12: gmod\e[0m"
  echo ""
  echo "Todo: make more videos/images/streams"
  
  # FILLER SPACING
  echo -e "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      "
# /FILLER SPACING

echo -e "\e[0m"
PRINTINFO=0
read -p "zlaunch? " ZLAUNCHER
PRINTINFO=0



if [ "$ZLAUNCHER" = "1" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup firefox && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi


if [ "$ZLAUNCHER" = "2" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup featherpad && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi

if [ "$ZLAUNCHER" = "3" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup pavucontrol && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi


if [ "$ZLAUNCHER" = "4" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup xfce4-taskmanager && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi

if [ "$ZLAUNCHER" = "5" ]; then
xfce4-terminal -e "bash -c 'sleep 0s && nohup gimp && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi


if [ "$ZLAUNCHER" = "6" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup guvcview && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi




if [ "$ZLAUNCHER" = "7" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup xfce4-screenshooter && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi



if [ "$ZLAUNCHER" = "8" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup zenity --warning --text 'ERR_INSTAGRAM_ONLY_WORKS_ON_YOUR_PHONE' && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi



if [ "$ZLAUNCHER" = "9" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup steam && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi

if [ "$ZLAUNCHER" = "10" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup bash /home/$(whoami)/steamZoeyOffline.sh && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi


if [ "$ZLAUNCHER" = "11" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup /opt/CurseForge/curseforge %U && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi



if [ "$ZLAUNCHER" = "12" ]; then
xfce4-terminal -e "nohup bash -c 'sleep 0s && nohup steam steam://launch/4000/ && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear ; clear'"
clear
fi






if [ "$ZLAUNCHER" = "" ]; then
sleep 0s && nohup clear && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown && echo "" > /dev/null && clear
clear
fi



done
fi
fi
#=================================================================#

# Now ask.
echo -e "\e[0m"
PRINTINFO=0
read -p "$qsim " QUERY

# Compare with all available options.
if [ "$QUERY" = "eat cake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$EATENCAKE" = "1" ]; then
  echo "You already have.";
  EATENCAKE=1
fi
fi
fi

if [ "$QUERY" = "eat cake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$EATENCAKE" = "0" ]; then
  echo "You eat the cake, yum!";
  PRINTINFO=0
  EATENCAKE=1
  WGPLAYERCURRENTWEIGHT=$((WGPLAYERCURRENTWEIGHT + 1))
fi
fi
fi

if [ "$QUERY" = "look at cake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$EATENCAKE" = "0" ]; then
  echo "So delicious and moist.";
  PRINTINFO=0
fi
fi
fi

if [ "$QUERY" = "cake" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "Use a verb before that, next time.";
  PRINTINFO=0
fi
fi

if [ "$QUERY" = "drink milkshake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$DRANKMILKSHAKE" = "1" ]; then
  echo "You already have.";
  DRANKMILKSHAKE=1
fi
fi
fi

if [ "$QUERY" = "drink milkshake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$DRANKMILKSHAKE" = "0" ]; then
  echo "You drink the milkshake, nice!";
  PRINTINFO=0
  DRANKMILKSHAKE=1
  WGPLAYERCURRENTWEIGHT=$((WGPLAYERCURRENTWEIGHT + 1))
fi
fi
fi

if [ "$QUERY" = "look at milkshake" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$DRANKMILKSHAKE" = "0" ]; then
  echo "It's strawberry flavoured.";
  PRINTINFO=0
fi
fi
fi

if [ "$QUERY" = "milkshake" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "Use a verb before that, next time.";
  PRINTINFO=0
fi
fi

if [ "$QUERY" = "painting" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "Use a verb before that, next time.";
  PRINTINFO=0
fi
fi

if [ "$QUERY" = "look at painting" ]; then
if [ "$ROOMID" = "5" ]; then
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

# Print term size test screens.
# Check forcefully that we're at least the right size at a minimum
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi
echo "On the wall of the cafe, is some art of a quite-thicc spider girl."
echo "She has what appears to be a human-like torso, head, and arms, but the rest of" 
echo "her is a large spider."
echo "Underneath the art, written on a plaque on the frame, are the words"
echo "'game engine art test'. Huh."
echo "
                                            /(((((#                            
                                           %%(((#((#                           
                                     ((((%//(**,..##                           
                                     %(#%%,.(,...*&%%%.                        
                                         /.*(***(,*&%.                         
                        .@@&(#(((#(,    ,.*.*(,*,/                           
                      (@@@(@@%((#@@@@##&   /**%%%**.                           
                      @@@@@@@@@@@@@@@@@@@  *.*##%#                             
                     @@@@@@@@@@@@@@@@%&@@(&%@,../.,%@@@@                       
                      @@@@@@@@@@@@%@@%@@@@&@@@((((@@@  @@                      
                       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @                      
                         @@@@@@@@@@@@@@%@@@@@@    @,    @                      
                            #@*@@@@,@@ %@ @@      @,    @                      
                             &@ .@  @@. @ @&(@    @     @                      
                              #& /(  %#   &                                    ";
  PRINTINFO=0
fi
fi

if [ "$QUERY" = "eat painting" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$EATENPAINTING" = "1" ]; then
  echo "You remember the fabric and wood and how it felt on your tounge. You decide not to try again.";
  EATENPAINTING=1
fi
fi
fi

if [ "$QUERY" = "eat painting" ]; then
if [ "$ROOMID" = "5" ]; then
if [ "$EATENPAINTING" = "0" ]; then
  echo "Your intrusive thoughts won. The canvas tastes horribly dry and the texture is  very rough. You let go of the painting after one bite and scratch the taste off your tounge.";
  PRINTINFO=0
  EATENPAINTING=1
  WGPLAYERCURRENTWEIGHT=$((WGPLAYERCURRENTWEIGHT + 1))
fi
fi
fi

if [ "$QUERY" = "garden" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "You walk into the garden.";
  PRINTINFO=1
  ROOMID=6
fi
fi

if [ "$QUERY" = "seat" ]; then
if [ "$ROOMID" = "6" ]; then
  echo "You walk back into the cafe and take your rest once more at your seat.";
  PRINTINFO=0
  ROOMID=5
fi
fi

if [ "$QUERY" = "look" ]; then
  PRINTINFO=1
fi

if [ "$QUERY" = "ls" ]; then
  PRINTINFO=1
fi

if [ "$QUERY" = "" ]; then
  echo "You need to type something.";
  PRINTINFO=0
fi

if [ "$QUERY" = "dev roomid" ]; then
  qsim=devcheats?
  echo "ROOMID:" && echo $ROOMID;
  PRINTINFO=0
fi

if [ "$QUERY" = "dev turn" ]; then
  qsim=devcheats?
  echo "turn:" && echo $TURNCOUNTER;
  PRINTINFO=0
fi

if [ "$QUERY" = "dev checkweight" ]; then
  qsim=devcheats?
  echo "WGPLAYERCURRENTWEIGHT:" && echo $WGPLAYERCURRENTWEIGHT;
  echo "DEBUGThis makes you:" && echo $WEIGHTRANKTODISPLAY;
  PRINTINFO=0
fi

if [ "$QUERY" = "weight" ]; then
  echo $(echo You are currently $WGPLAYERCURRENTWEIGHT$WGPLAYERWEIGHTSYMBOL.);
  echo $(echo This makes you $WEIGHTRANKTODISPLAY);
  PRINTINFO=0
fi

if [ "$QUERY" = "dev gainweight" ]; then
  qsim=devcheats?
  echo "Enter number:"
  read -p "NUM? " DEBUGPOUNDSGAIN
  echo "Gaining $DEBUGPOUNDSGAIN lb(s)..."
  WGPLAYERCURRENTWEIGHT=$((WGPLAYERCURRENTWEIGHT + $DEBUGPOUNDSGAIN))
  PRINTINFO=0
fi

if [ "$QUERY" = "dev setweight" ]; then
  clear
  echo ""
  echo "Cleared screen."
  echo ""
  echo "devcheats? dev setweight"
  echo ""
  qsim=devcheats?
  echo "Enter number:"
  read -p "NUM? " DEBUGPOUNDSGAIN
  echo "Setting $DEBUGPOUNDSGAIN lb(s)..."
  WGPLAYERCURRENTWEIGHT=$(($DEBUGPOUNDSGAIN))
  PRINTINFO=0
  echo ""
  echo "- AS SUCH:"
  echo ""
  qsim=devcheats?
  echo "WGPLAYERCURRENTWEIGHT:" && echo $WGPLAYERCURRENTWEIGHT;
  DEVDISPLAYWEIGHTNOWTEST=1
  PRINTINFO=0
fi

if [ "$QUERY" = "exit" ]; then
  PRINTINFO=0
  UPDATESEQUENCE=0
export UPDATESEQUENCE=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 1s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
 # Save the user's game stop to a log for debugging purposes.
cd "$(dirname "$0")"

# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER

  clear
  echo "Goodbye for now!"
  echo ""
  exit
fi

if [ "$QUERY" = "cls" ]; then
  PRINTINFO=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 1s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
  clear
  echo ""
  echo "Cleared screen."
fi

if [ "$QUERY" = "clr" ]; then
  PRINTINFO=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 1s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
  clear
  echo ""
  echo "Cleared screen."
fi

if [ "$QUERY" = "clear" ]; then
  PRINTINFO=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 1s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
  clear
  echo ""
  echo "Cleared screen."
fi

if [ "$QUERY" = "credits" ]; then
  echo "==== CREDITS ===="
  echo "bash adventure game"
  echo ""
  echo "Engine and text by Novimatrem"
  echo "Additional text by Lachtigall"
  echo ""
  PRINTINFO=0
fi

if [ "$QUERY" = "dev update" ]; then
clear
PRINTINFO=0
clear
echo "This product is licensed under the GNU GPL v3.0.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License (v3.0) for more details.
You should have received a copy of the GNU General Public License along with
this program.  If not, see https://www.gnu.org/licenses/gpl-3.0.en.html.
THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS
AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE
RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION."
echo ""
echo "To update the game, type y"
echo "This will delete the installed version entirely and replace it with the newest."
echo "To not, close this Terminal window now."
echo ""
cd "$(dirname "$0")"
sleep 3s
while true; do
    read -p "Update? (y) " yn
    case $yn in
        [Yy]* ) UPDATESEQUENCE=1 && export UPDATESEQUENCE=1 && rm -rf updater.sh && curl -O https://gitlab.com/Novimatrem/textadv.sh/-/raw/main/updater.sh && bash updater.sh; break;;
        * ) echo "Please answer.";;
    esac
done
UPDATESEQUENCE=0
export UPDATESEQUENCE=0
exit
  PRINTINFO=0
fi

if [ "$QUERY" = "dev cols" ]; then
  qsim=devcheats?
  tput cols
  echo ""
  PRINTINFO=0
fi

if [ "$QUERY" = "dev pwd" ]; then
  qsim=devcheats?
  pwd
  echo ""
  PRINTINFO=0
fi

if [ "$QUERY" = "dev lines" ]; then
  qsim=devcheats?
  tput lines
  echo ""
  PRINTINFO=0
fi


if [ "$QUERY" = "dev hp" ]; then
  qsim=devcheats?
  echo "hp:"
  echo $hp
  echo -
  echo "maxhp:"
  echo $maxhp
  echo -
  PRINTINFO=0
fi

if [ "$QUERY" = "dev sethp" ]; then
  qsim=devcheats?
  read -p 'Set HP to?: ' hp
  read -p 'Set MaxHP to?: ' maxhp
  PRINTINFO=0
fi

if [ "$QUERY" = "hp" ]; then
  echo "Health (HP): $hp/$maxhp"
  PRINTINFO=0
fi

if [ "$QUERY" = "zlauncher" ]; then
  ROOMID=69
  PRINTINFO=1
  clear
fi

if [ "$QUERY" = "dev rows" ]; then
  qsim=devcheats?
  tput lines
  echo ""
  PRINTINFO=0
fi

if [ "$QUERY" = "zr" ]; then

 PRINTINFO=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 0s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
  clear
  echo "? zr"
  
zr_response=$(bash zoeyreplace.sh)

echo $zr_response
#espeak -p 66 -s 150 "$zr_response"

  PRINTINFO=0
fi

if [ "$QUERY" = "zrs" ]; then

 PRINTINFO=0
  cd $(dirname $0) && cat lotsofdots.txt
  sleep 0s
  s=20000; printf %$s's\n' " "
  yes '' | head -n1000
  cd $(dirname $0) && cat lotsofdots.txt
  cd $(dirname $0) && cat lotsofdots.txt
  s=20000; printf %$s's\n' " "
  cd $(dirname $0) && cat lotsofdots.txt
  clear
  echo "? zrs"
  
zr_response=$(bash zoeyreplaceS.sh)

echo $zr_response
#espeak -p 66 -s 150 "$zr_response"

  PRINTINFO=0
fi

if [ "$QUERY" = "dev clogq" ]; then
  
  echo "Log removed."
  qsim=devcheats?
  rm -rf log.txt
  echo ""
  PRINTINFO=0
  exit
fi

if [ "$QUERY" = "dev bcharart pixels" ]; then
  qsim=devcheats?
  PRINTINFO=0
  echo Test of the art system. Pixels.
  echo ""
  echo "-----------------------------"
  echo ""
  echo -e "Set 1: |\e[40m \e[0m\e[41m \e[0m\e[42m \e[0m\e[43m \e[0m\e[44m \e[0m\e[45m \e[0m\e[46m \e[0m\e[47m \e[0m\e[48m|"
  echo ""
  echo -e "Set 2: |\e[100m \e[0m\e[101m \e[0m\e[102m \e[0m\e[103m \e[0m\e[104m \e[0m\e[105m \e[0m\e[106m \e[0m\e[107m \e[0m\e[108m|"
  echo ""
  echo "Only use ONE SET per image. Not both."
  echo "Ideally ONLY USE set 2, because set 1 colours don't render on all platforms and it falls back to using set 2 instead, anyway."
  echo ""
  echo "-----------------------------"
  echo ""
  PRINTINFO=0
fi

if [ "$QUERY" = "dev bcharart graph" ]; then
clear
  qsim=devcheats?
  PRINTINFO=0
clear

# terminal background color default:  |\e[40m

  #echo -e "Set 2: |\e[100m \e[0m\e[101m \e[0m\e[102m \e[0m\e[103m \e[0m\e[104m \e[0m\e[105m \e[0m\e[106m \e[0m\e[107m \e[0m\e[108m|"
  PRINTINFO=0
  
  
# https://en.wikipedia.org/wiki/Box-drawing_characters
  
  clear
echo -ne "                                                                                "
echo -ne "                                                                                "
echo -ne "    17│\e[0m\e[40m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " A  16│\e[0m\e[40m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " d  15│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " o  14│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " r  13│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " a  12│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " t  11│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " i  10│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " o   9│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " n   8│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne "     7│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " l   6│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[40m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " e   5│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[103m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " v   4│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[103m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " e   3│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[103m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " l   2│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[103m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne " s   1│\e[0m\e[101m       \e[40m \e[0m\e[102m       \e[40m \e[0m\e[103m       \e[40m \e[0m\e[104m       \e[40m \e[0m\e[107m       \e[40m \e[0m\e[105m       \e[40m                          "
echo -ne "     0└───────────────────────────────────────────────────────────────────────   "
echo -ne "      |FoodA| |FoodB| |FoodC| |FoodD| |DrnkA| |DrnkB|                           "

while true; do
    read -rep '                                                                                
                                                              (Exit: q, Enter)  
                                                                              ' yns
    case $yns in
        [Qq]* ) break;;
        * ) true ;;
    esac
done
clear

  
fi

if [ "$QUERY" = "ts" ]; then
  clear
  qsim=:
  PRINTINFO=0
echo "Hey, wake up!"
cd "$(dirname "$0")"
paplay zyou_were_poked.mp3
powershell -c "pwd"
powershell -c "(New-Object Media.SoundPlayer zyou_were_poked.wav).PlaySync();" &
  PRINTINFO=0
  clear
  echo "Hey, wake up!"
fi


if [ "$QUERY" = "mic" ]; then
  clear
  qsim=
  PRINTINFO=0
echo "🎤 Microphone muted! 🎤"
echo ""
echo "🎤"

cd "$(dirname "$0")"
paplay zmicrophone-muted-teamspeak.mp3
powershell -c "pwd"
powershell -c "(New-Object Media.SoundPlayer zmicrophone-muted-teamspeak.wav).PlaySync();" &
  PRINTINFO=0
  clear
  echo "🎤 Microphone muted! 🎤"
	echo ""

fi

if [ "$QUERY" = "dev bcharart foxtest" ]; then
  qsim=devcheats?
  PRINTINFO=0
  
# Check we are the right size to play.
CHARWIDTH="$(tput cols)"
CHARHEIGHT="$(tput lines)"

# Print term size test screens.
# Check forcefully that we're at least the right size at a minimum
if [ "$CHARWIDTH" -le "79" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently only $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARHEIGHT" -le "23" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently only $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARWIDTH" -ge "81" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 80 characters wide so the game fits."
echo "It's currently $CHARWIDTH :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi

if [ "$CHARHEIGHT" -ge "25" ]; then
PRINTINFO=0
cd $(dirname $0) && cat lotsofdots.txt
sleep 1s
s=20000; printf %$s's\n' " "
yes '' | head -n1000
cd $(dirname $0) && cat lotsofdots.txt
cd $(dirname $0) && cat lotsofdots.txt
s=20000; printf %$s's\n' " "
cd $(dirname $0) && cat lotsofdots.txt
clear
echo ""
echo "ERROR:"
echo "Please resize your Terminal to be 24 characters high so the game fits."
echo "It's currently $CHARHEIGHT :("
echo "The Terminal size ideal for the game is 80x24"
echo ""
exit
fi
  clear
  echo -e "$(cat oldbagart.txt)"
  PRINTINFO=0
  # YOU MUST RETURN TO THE INTERPRETER STRAIGHT AFTER SHOWING ART, OR IT BREAKS THE WHOLE GAME, WE CLEANUP THERE
fi

# So I do not accidentally get confused by issues I have created by cheating
if [[ $QUERY == *"dev"* ]]; then
  qsim=devcheats?
fi

# Save the user's turn to a log for debugging purposes.
cd "$(dirname "$0")"

# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER

# Save the user's last query to a log for debugging purposes.
cd "$(dirname "$0")"

# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER

# Save the user's roomid to a log for debugging purposes.
cd "$(dirname "$0")"

# LOGGING REMOVED DUE TO BUGS, WILL RE-ADD LATER

# fix junk zr debug causes
cd "$(dirname "$0")"
rm -rf sed*

# This entire game is a biig loop.
done
