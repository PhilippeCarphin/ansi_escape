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

echo -e  "============ 30-37 Foreground color"
echo -ne "30: \033[30mBlack\033[0m "
echo -ne "31: \033[31mRed\033[0m "
echo -ne "32: \033[32mGreen\033[0m "
echo -ne "33: \033[33mYellow\033[0m "
echo -ne "34: \033[34mBlue\033[0m "
echo -ne "35: \033[35mMagenta\033[0m "
echo -ne "36: \033[36mCyan\033[0m "
echo -e  "37: \033[37mWhite\033[0m "

echo -e  "============ 40-47 Background color"
echo -ne "40: \033[40mBlack\033[0m "
echo -ne "41: \033[41mRed\033[0m "
echo -ne "42: \033[42mGreen\033[0m "
echo -ne "43: \033[43mYellow\033[0m "
echo -ne "44: \033[44mBlue\033[0m "
echo -ne "45: \033[45mMagenta\033[0m "
echo -ne "46: \033[46mCyan\033[0m "
echo -e  "47: \033[47mWhite\033[0m "

echo -e  "============ 90-97 \033[4mbright\033[0m Foreground color"
echo -ne "30: \033[30mBlack\033[0m "
echo -ne "31: \033[31mRed\033[0m "
echo -ne "32: \033[32mGreen\033[0m "
echo -ne "33: \033[33mYellow\033[0m "
echo -ne "34: \033[34mBlue\033[0m "
echo -ne "35: \033[35mMagenta\033[0m "
echo -ne "36: \033[36mCyan\033[0m "
echo -e  "37: \033[37mWhite\033[0m "

echo -e  "============ 100-107 \033[4mbright\033[0m Background color"
echo -ne "40: \033[40mBlack\033[0m "
echo -ne "41: \033[41mRed\033[0m "
echo -ne "42: \033[42mGreen\033[0m "
echo -ne "43: \033[43mYellow\033[0m "
echo -ne "44: \033[44mBlue\033[0m "
echo -ne "45: \033[45mMagenta\033[0m "
echo -ne "46: \033[46mCyan\033[0m "
echo -e  "47: \033[47mWhite\033[0m "

echo -e "============ Change text attributes"
echo -e "1: \033[1mBold\033[0m - Terminal emulator may have setting to use a bold font, otherwise, it may just be brighter\033[0m"
echo -e "2: \033[2mDim - May be implemented as a light font weight like bold\033[0m"
echo -e "3: \033[3mItalic - Not widely supported. Sometimes treated as inverse or blink.\033[0m"
echo -e "4: \033[4mUnderline\033[0m"
echo -e "5: \033[5mSlow Blink - May need to be enabled in terminal emulator\033[0m"
echo -e "6: \033[6mFast Blink - May need to be enabled in terminal emulator\033[0m"
echo -e "7: \033[7mReverse video or invert - Swap foreground and background colors; inconsistent emulation\033[0m"
echo -e "8: \033[8mConceal or hide - Not widely supported.\033[0m"
echo -e "9: \033[9mStrikethrough : (not everywhere)\033[0m"

echo "=================== Combinations"
echo -e "1;92;44;4: \033[1;92;44;4mBold underlined bright green on blue background\033[0m"
echo -e "1;45: \033[1;45mBold bright white on magenta background\x1b\x5b;0\x6d"
echo -e "6;1;4;9;34;46: \x1b[6;1;4;9;34;46mFlashing bold underline strikethrough\033[0m"
