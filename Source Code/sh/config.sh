#!/bin/bash
INPUT_FILE=$(dialog --title "Input file" --fselect "./dat/input.dat" 10 50 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$INPUT_FILE" ]]; then
    exit 1
fi
CFLAGS="-DINPUT_DAT=\\\"$INPUT_FILE\\\""

OUTPUT_DIRECTORY=$(dialog --title "Output directory" --dselect "./dat" 10 50 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$OUTPUT_DIRECTORY" ]]; then
    exit 1
fi
CFLAGS="$CFLAGS -DOUTPUT_DAT=\\\"$OUTPUT_DIRECTORY/output.dat\\\""

TRITS=$(dialog --title "Number of ternary bits" --inputbox "Enter a number:" 10 50 4 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$TRITS" || ! "$TRITS" =~ ^[0-9]+$ ]]; then
    exit 1
fi
CFLAGS="$CFLAGS -DTRITS=$TRITS"

OPTIONS=$(dialog --title "Optional flags" --checklist "Select desired options:" 10 50 1 \
    1 "Decimal input file" off 3>&1 1>&2 2>&3)
if [[ $? -ne 0 ]]; then
    exit 1
fi
if [[ "$OPTIONS" =~ "1" ]]; then
    CFLAGS="$CFLAGS -DDECIMAL_INPUT"
fi

clear
make clean
make CFLAGS="$CFLAGS" DAT_DIR="$OUTPUT_DIRECTORY"
