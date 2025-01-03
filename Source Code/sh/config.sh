#!/bin/bash
PROGRAM="sata"
CFLAGS=""
BUILD_DIR="./build"

decimal_input() {
    DECIMAL_INPUT=$(dialog --title "Decimal input" --defaultno --yesno \
        "\nIs your input file in decimal format?" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -eq 0 ]]; then
        if [ -n "$CFLAGS" ]; then
            CFLAGS="$CFLAGS -DDECIMAL_INPUT"
        else
            CFLAGS="-DDECIMAL_INPUT"
        fi
        DEFAULT_FILE="./dat/decimal_input.dat"
    else
        DEFAULT_FILE="./dat/input.dat"
    fi
    input_file
}

input_file() {
    if [ -z "$DEFAULT_FILE" ]; then
        DEFAULT_FILE="./dat/input.dat"
    fi
    INPUT_FILE=$(dialog --title "Input file" --fselect "$DEFAULT_FILE" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 || -z "$INPUT_FILE" ]]; then
        exit
    elif [ -n "$CFLAGS" ]; then
        CFLAGS="$CFLAGS -DINPUT_DAT=\\\"$INPUT_FILE\\\""
    else
        CFLAGS="-DINPUT_DAT=\\\"$INPUT_FILE\\\""
    fi
    output_directory
}

input_output() {
    INPUT_OUTPUT=$(dialog --title "Input/output" --defaultno --yesno \
        "\nDo you want to enable input and output files?" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -eq 0 ]]; then
        if [ -n "$CFLAGS" ]; then
            CFLAGS="$CFLAGS -DINPUT_OUTPUT"
        else
            CFLAGS="-DINPUT_OUTPUT"
        fi
        decimal_input
    else
        options
    fi
}

main() {
    MAIN=$(dialog --title "Parameterized Systolic Arrays with Ternary Arithmetic" --msgbox \
        "\nAn implementation of parameterized systolic arrays, the balanced ternary system, its addition and multiplication in SystemC\
        \n\nThe following dialogs will guide you through the process of building the perfect executable for your needs" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 ]]; then
        exit
    fi
    trits
}

options() {
    OPTIONS=$(dialog --title "Optional flags" --checklist "\nPlease select your desired options:" 10 70 1 \
        1 "Debbuging" on 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 ]]; then
        exit
    elif [[ "$OPTIONS" =~ "1" ]]; then
        if [ -n "$CFLAGS" ]; then
            CFLAGS="$CFLAGS -g"
        else
            CFLAGS="-g"
        fi
    fi
    summary
}

output_directory() {
    OUTPUT_DIRECTORY=$(dialog --title "Output directory" --dselect "./dat" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 || -z "$OUTPUT_DIRECTORY" ]]; then
        exit
    elif [ -n "$CFLAGS" ]; then
        CFLAGS="$CFLAGS -DOUTPUT_DAT=\\\"$OUTPUT_DIRECTORY/output.dat\\\""
    else
        CFLAGS="-DOUTPUT_DAT=\\\"$OUTPUT_DIRECTORY/output.dat\\\""
    fi
    options
}

summary() {
    SUMMARY=$(dialog --title "Summary" --colors --msgbox \
        "\nThe following flags have been selected: \
        \n\nCFLAGS=\"\Z2$CFLAGS\Zn\"" 10 70 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 ]]; then
        exit
    fi
}

trits() {
    TRITS=$(dialog --title "Number of ternary bits" --inputbox "\nPlease select your desired number of ternary bits (>= 1):" 10 70 4 3>&1 1>&2 2>&3)
    if [[ $? -ne 0 || -z "$TRITS" || ! "$TRITS" =~ ^[1-9]+[0-9]*$ ]]; then
        exit
    elif [ -n "$CFLAGS" ]; then
        CFLAGS="$CFLAGS -DTRITS=$TRITS"
    else
        CFLAGS="-DTRITS=$TRITS"
    fi
    input_output
}

main
clear
make clean
make CFLAGS="$CFLAGS"
$BUILD_DIR/$PROGRAM
