# TU_SEP_Test_Cases
This is a simple script which tests a program depending on input commands. It compares the output of a program to a predefined correct output which is saved in a .txt file.

#### usage:
+ place your program which you would like to test in the `test_program/` directory
    - either include your program files including the makefile
    - or just place the binary file in this directory
+ run `test.sh`

#### folder structure:
```
.
├── LICENSE
├── README.md
├── test.sh (script which you want to be executed)
├── test_program (folder which contains your program files/binary)
    └── put your program with makefile here (or just binary)
└── test_commands (folder which includes the commands you want to get tested)
    ├── xxx_INPUT.txt
    ├── xxx_OUTPUT.txt
    ├── xxx_CORRECT.txt
    ├── ...
```

#### limitations:
This script is is a quick coded version just to test a C++ program which was needed in University. Please feel free to adapt it to your needs. I would be very grateful to include your inprovements.
Thanks for your support!
