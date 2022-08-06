#!/bin/bash
# textadv.sh

# Clear screen
clear

# Enable printing description text
PRINTINFO=1

# Set all inventory items as you wish them.
EATENCAKE=0
DRANKMILKSHAKE=0

echo "Welcome! Valid commands so far are 'look', 'eat cake', and 'drink milkshake'."
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
  if [ "$EATENCAKE" = "0" ]; then
  echo "There is a cake.";
fi
if [ "$DRANKMILKSHAKE" = "0" ]; then
  echo "There's a milkshake.";
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

