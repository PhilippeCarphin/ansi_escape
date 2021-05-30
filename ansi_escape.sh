#!/bin/bash

# \033 == \x1b == ESC
# \0133 == \x5b == [
# \155 == \x6d == m

# Ref https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_(Control_Sequence_Introducer)_sequences
#
# Control sequence introducer (CSI) := ESC [
#
# Set Graphic Rendigion (SGR) : CSI ${seq} m
# where seq is mostly a semi-colon separated list of numbers that change text
# attributes
# - 30-37 : Foreground color (90-97 : brigher versions)
# - 40-47 : Background color (100-107 : brigher versions)
# - 1 : bold
# - 2 : dim
# - 4 : underline
# - ...

echo     "============ 30-37 Foreground color"
echo -n  "30: [30mBlack[0m "
echo -n  "31: [31mRed[0m "
echo -n  "32: [32mGreen[0m "
echo -n  "33: [33mYellow[0m "
echo -n  "34: [34mBlue[0m "
echo -n  "35: [35mMagenta[0m "
echo -n  "36: [36mCyan[0m "
echo     "37: [37mWhite[0m "

echo     "============ 40-47 Background color"
echo -n  "40: [40mBlack[0m "
echo -n  "41: [41mRed[0m "
echo -n  "42: [42mGreen[0m "
echo -n  "43: [43mYellow[0m "
echo -n  "44: [44mBlue[0m "
echo -n  "45: [45mMagenta[0m "
echo -n  "46: [46mCyan[0m "
echo     "47: [47mWhite[0m "

echo     "============ 90-97 [4mbright[0m Foreground color"
echo -n  "30: [30mBlack[0m "
echo -n  "31: [31mRed[0m "
echo -n  "32: [32mGreen[0m "
echo -n  "33: [33mYellow[0m "
echo -n  "34: [34mBlue[0m "
echo -n  "35: [35mMagenta[0m "
echo -n  "36: [36mCyan[0m "
echo     "37: [37mWhite[0m "

echo     "============ 100-107 [4mbright[0m Background color"
echo -n  "40: [40mBlack[0m "
echo -n  "41: [41mRed[0m "
echo -n  "42: [42mGreen[0m "
echo -n  "43: [43mYellow[0m "
echo -n  "44: [44mBlue[0m "
echo -n  "45: [45mMagenta[0m "
echo -n  "46: [46mCyan[0m "
echo     "47: [47mWhite[0m "

echo    "============ Change text attributes"
echo    "1: [1mBold[0m - Terminal emulator may have setting to use a bold font, otherwise, it may just be brighter[0m"
echo    "2: [2mDim - May be implemented as a light font weight like bold[0m"
echo    "3: [3mItalic - Not widely supported. Sometimes treated as inverse or blink.[0m"
echo    "4: [4mUnderline[0m"
echo    "5: [5mSlow Blink - May need to be enabled in terminal emulator[0m"
echo    "6: [6mFast Blink - May need to be enabled in terminal emulator[0m"
echo    "7: [7mReverse video or invert - Swap foreground and background colors; inconsistent emulation[0m"
echo    "8: [8mConceal or hide - Not widely supported.[0m"
echo    "9: [9mStrikethrough : (not everywhere)[0m"

echo "=================== Combinations"
echo    "1;92;44;4: [1;92;44;4mBold underlined bright green on blue background[0m"
echo    "1;45: [1;45mBold bright white on magenta background[;0m"
echo    "5;1;4;9;34;46: [5;1;4;9;34;46mFlashing bold underline strikethrough[0m"
