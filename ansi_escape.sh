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

printf "============ 30-37 Foreground color\n"
printf "30: \033[30mBlack\033[0m "
printf "31: \033[31mRed\033[0m "
printf "32: \033[32mGreen\033[0m "
printf "33: \033[33mYellow\033[0m "
printf "34: \033[34mBlue\033[0m "
printf "35: \033[35mMagenta\033[0m "
printf "36: \033[36mCyan\033[0m "
printf "37: \033[37mWhite\033[0m\n"

printf "============ 90-97 \033[4mbright\033[0m Foreground color\n"
printf "90: \033[90mBlack\033[0m "
printf "91: \033[91mRed\033[0m "
printf "92: \033[92mGreen\033[0m "
printf "93: \033[93mYellow\033[0m "
printf "94: \033[94mBlue\033[0m "
printf "95: \033[95mMagenta\033[0m "
printf "96: \033[96mCyan\033[0m "
printf "97: \033[97mWhite\033[0m\n"

printf "============ 40-47 Background color\n"
printf "40: \033[40mBlack\033[0m "
printf "41: \033[41mRed\033[0m "
printf "42: \033[42mGreen\033[0m "
printf "43: \033[43mYellow\033[0m "
printf "44: \033[44mBlue\033[0m "
printf "45: \033[45mMagenta\033[0m "
printf "46: \033[46mCyan\033[0m "
printf "47: \033[47mWhite\033[0m\n"

printf "============ 100-107 \033[4mbright\033[0m Background color\n"
printf "100: \033[100mBlack\033[0m "
printf "101: \033[101mRed\033[0m "
printf "102: \033[102mGreen\033[0m "
printf "103: \033[103mYellow\033[0m "
printf "104: \033[104mBlue\033[0m "
printf "105: \033[105mMagenta\033[0m "
printf "106: \033[106mCyan\033[0m "
printf "107: \033[107mWhite\033[0m\n"

printf "============ Change text attributes\n"
printf "1: \033[1mBold\033[0m - Terminal emulator may have setting to use a bold font, otherwise, it may just be brighter\033[0m\n"
printf "2: \033[2mDim - May be implemented as a light font weight like bold\033[0m\n"
printf "3: \033[3mItalic - Not widely supported. Sometimes treated as inverse or blink.\033[0m\n"
printf "4: \033[4mUnderline\033[0m\n"
printf "5: \033[5mSlow Blink - May need to be enabled in terminal emulator\033[0m\n"
printf "6: \033[6mFast Blink - May need to be enabled in terminal emulator\033[0m\n"
printf "7: \033[7mReverse video or invert - Swap foreground and background colors; inconsistent emulation\033[0m\n"
printf "8: \033[8mConceal or hide - Not widely supported.\033[0m\n"
printf "9: \033[9mStrikethrough : (not everywhere)\033[0m\n"
printf "============ Reset text attributes\n"
printf "22: Normal intensity (reset bold)\n"
printf "23: Not italic\n"
printf "24: Not underlined\n"
printf "25: Not blinking    Turn blinking off\n"
printf "26: ???\n"
printf "27: Not reversed\n"
printf "28: Reveal  (Not concealed)\n"
printf "29: Not strikethrough\n"
printf ""
printf "=================== Combinations\n"
printf "1;92;44;4: \033[1;92;44;4mBold underlined bright green on blue background\033[0m\n"
printf "1;37;45: \033[1;37;45mBold bright white on magenta background\033[;0m\n"
printf "5;1;4;9;34;46: \033[5;1;4;9;34;46mFlashing bold underline strikethrough\033[0m\n"
printf "\n"
printf "=================== Useful sequences\n"
printf "39: Reset only foreground color\n"
printf "49: Reset only background color\n"
printf "38;5;<n>: Set foreground to 8bit color code see \`show-color-codes\`\n"
printf "48;5;<n>: Set background to 8bit color code see \`show-color-codes\`\n"
printf "\n"
printf "=================== Cursor commands\n"
printf "Moves the cursor n (default 1) cells in the given direction. If the cursor is already at the edge of the screen, this has no effect.\n"
printf "CSI <n> A: CUU Cursor Up\n"
printf "CSI <n> B: CUD Cursor Down\n"
printf "CSI <n> C: CUF Cursor Forward\n"
printf "CSI <n> D: CUB Cursor Back\n"
printf "CSI s : Save cursor position\n"
printf "CSI u : Restore cursor position\n"
printf "CSI <n> K: Erase line (0/missing: cursor-to-EOL, 1: cursor-to-BOL, 2: Entire line)"
printf "CSI <n> J: Erase display (0/missing: cursor-to-EOD, 1: cursor-to-BOD, 2: Entire Display"
printf "=================== Set Window title (intercepted by TMUX and put in #T which can then be used in 'set-titles-string')\n"
printf "%s]0;TITLE HERE%s\n" "\\033" "\\007"

