#!/bin/bash

#title           :test.sh
#description     :This script tests a program depending on input commands.
#description     :It compares the output to the predefined correct output.
#author          :GatCode
#year            :2017
#usage           :bash test.sh
#notes           :this is a HARDCODED version, feel free to adapt it to your needs

# Copyright (c) 2017 GatCode

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#===================================================================================

# compile the C++ Program with the Makefile
cd test_program
make
cd ..

# test Commands
./test_program/basic > test_commands/start_OUTPUT.txt
./test_program/basic 10 1 >> test_commands/start_OUTPUT.txt
./test_program/basic 10 1 1 1 >> test_commands/start_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/general_INPUT.txt > test_commands/general_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/echo_INPUT.txt > test_commands/echo_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/play_INPUT.txt > test_commands/play_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/play_with_weather_INPUT.txt > test_commands/play_with_weather_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/balance_INPUT.txt > test_commands/balance_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/setweather_INPUT.txt > test_commands/setweather_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/quote_INPUT.txt > test_commands/quote_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/recipe_INPUT.txt > test_commands/recipe_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/buy_INPUT.txt > test_commands/buy_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/quit_INPUT.txt > test_commands/quit_OUTPUT.txt
echo $? > test_commands/exit_OUTPUT.txt
./test_program/basic; echo $? >> test_commands/exit_OUTPUT.txt
./test_program/basic 10 1; echo $? >> test_commands/exit_OUTPUT.txt
./test_program/basic 10 1 1 1; echo $? >> test_commands/exit_OUTPUT.txt
./test_program/basic 10 1 1 < test_commands/logic_INPUT.txt > test_commands/logic_OUTPUT.txt

# clean the crap files generated by the Makefile
cd test_program
make clean
cd ..

# check the Test Cases
echo ""
echo ""
echo ""
echo ' _____           _      ____                       '
echo '|_   _|___  ___ | |_   / ___| __ _  ___   ___  ___ '
echo '  | | / _ \/ __|| __| | |    / _` |/ __| / _ \/ __|'
echo '  | ||  __/\__ \| |_  | |___| (_| |\__ \|  __/\__ \'
echo '  |_| \___||___/ \__|  \____|\__,_||___/ \___||___/'
echo "==================================================="

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/start_OUTPUT.txt" "test_commands/start_CORRECT.txt"
then
   echo "[OK]     START APPLICATION TEST CASE"
else
   echo "[FAILED] START APPLICATION TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/general_OUTPUT.txt" "test_commands/general_CORRECT.txt"
then
   echo "[OK]     GENERAL COMMANDS TEST CASE"
else
   echo "[FAILED] GENERAL COMMANDS TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/echo_OUTPUT.txt" "test_commands/echo_CORRECT.txt"
then
   echo "[OK]     ECHO TEST CASE"
else
   echo "[FAILED] ECHO TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/play_OUTPUT.txt" "test_commands/play_CORRECT.txt"
then
   echo "[OK]     PLAY TEST CASE"
else
   echo "[FAILED] PLAY TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/play_with_weather_OUTPUT.txt" "test_commands/play_with_weather_CORRECT.txt"
then
   echo "[OK]     PLAY WITH WEATHER TEST CASE"
else
   echo "[FAILED] PLAY WITH WEATHER TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/balance_OUTPUT.txt" "test_commands/balance_CORRECT.txt"
then
   echo "[OK]     BALANCE TEST CASE"
else
   echo "[FAILED] BALANCE TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/setweather_OUTPUT.txt" "test_commands/setweather_CORRECT.txt"
then
   echo "[OK]     SETWEATHER TEST CASE"
else
   echo "[FAILED] SETWEATHER TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/quote_OUTPUT.txt" "test_commands/quote_CORRECT.txt"
then
   echo "[OK]     QUOTE TEST CASE"
else
   echo "[FAILED] QUOTE TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/recipe_OUTPUT.txt" "test_commands/recipe_CORRECT.txt"
then
   echo "[OK]     RECIPE TEST CASE"
else
   echo "[FAILED] RECIPE TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/buy_OUTPUT.txt" "test_commands/buy_CORRECT.txt"
then
   echo "[OK]     BUY TEST CASE"
else
   echo "[FAILED] BUY TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/quit_OUTPUT.txt" "test_commands/quit_CORRECT.txt"
then
   echo "[OK]     QUIT TEST CASE"
else
   echo "[FAILED] QUIT TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/exit_OUTPUT.txt" "test_commands/exit_CORRECT.txt"
then
   echo "[OK]     EXIT CODE TEST CASE"
else
   echo "[FAILED] EXIT CODE TEST CASE"
fi

# ----------------------------------------------------------------------------------
if cmp -s "test_commands/logic_OUTPUT.txt" "test_commands/logic_CORRECT.txt"
then
   echo "[OK]     GAME LOGIC TEST CASE"
else
   echo "[FAILED] GAME LOGIC TEST CASE"
fi

echo "==================================================="
echo ""
