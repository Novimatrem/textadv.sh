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

# This entire game is a biig loop.
while true; do

# DEBUG: SET ROOMID
ROOMID=5

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


# Now ask.
read -p "? " QUERY

# Compare with all available options.
if [ "$QUERY" = "eat cake" ]; then
  echo "You eat the cake, yum!";
  PRINTINFO=0
  EATENCAKE=1
fi

if [ "$QUERY" = "drink milkshake" ]; then
  echo "You drink the milkshake, nice!";
  PRINTINFO=0
  DRANKMILKSHAKE=1
fi

if [ "$QUERY" = "look" ]; then
  PRINTINFO=1
fi

if [ "$QUERY" = "" ]; then
  echo "You need to type something.";
  PRINTINFO=0
fi

# This entire game is a biig loop.
done
