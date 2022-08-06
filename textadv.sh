#!/bin/bash
# textadv.sh

# Clear screen
clear

# Enable printing description text
PRINTINFO=1

# Set all inventory items as you wish them.
EATENCAKE=0
DRANKMILKSHAKE=0

echo -e "Welcome! Regular text-adventure game commands like '\e[1;32;4;1mlook\e[0m' work here."
echo ""

# DEBUG: SET ROOMID
ROOMID=5

# This entire game is a biig loop.
while true; do

# Set the scene based on what we know, if it's the time we do that.

# ROOMID 5, Cafe -------------------------------------------------#
if [ "$ROOMID" = "5" ]; then
if [ "$PRINTINFO" = "1" ]; then
  echo "You find yourself inside a cafe.";
  echo -e "You can see a side-door that's open to a sunny-looking \e[1;32;4;1mgarden\e[0m."
  if [ "$EATENCAKE" = "0" ]; then
  echo -e "There is a \e[1;32;4;1mcake\e[0m.";
fi
if [ "$DRANKMILKSHAKE" = "0" ]; then
  echo -e "There's a \e[1;32;4;1mmilkshake\e[0m.";
fi
fi
fi
#=================================================================#

# ROOMID 6, Garden -------------------------------------------------#
if [ "$ROOMID" = "6" ]; then
if [ "$PRINTINFO" = "1" ]; then
  echo "It's a beautiful garden. Flowers are around.";
  echo -e "You can see a side-door of the cafe, your prior \e[1;32;4;1mseat\e[0m is visible through the door."
fi
fi
#=================================================================#


# Now ask.
read -p "? " QUERY

# Compare with all available options.
if [ "$QUERY" = "eat cake" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "You eat the cake, yum!";
  PRINTINFO=0
  EATENCAKE=1
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
  echo "You drink the milkshake, nice!";
  PRINTINFO=0
  DRANKMILKSHAKE=1
fi
fi

if [ "$QUERY" = "milkshake" ]; then
if [ "$ROOMID" = "5" ]; then
  echo "Use a verb before that, next time.";
  PRINTINFO=0
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

if [ "$QUERY" = "" ]; then
  echo "You need to type something.";
  PRINTINFO=0
fi

if [ "$QUERY" = "dev roomid" ]; then
  echo "ROOMID:" && echo $ROOMID;
  PRINTINFO=0
fi

# This entire game is a biig loop.
done
