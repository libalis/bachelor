#!/bin/bash
INPUT_FILE=$(dialog --title "Input file" --fselect "./dat/input.dat" 10 50 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$INPUT_FILE" ]]; then
    exit 1
fi
CFLAGS="-DINPUT_DAT=\\\"$INPUT_FILE\\\""

OUTPUT_FILE=$(dialog --title "Output file" --fselect "./dat/output.dat" 10 50 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$OUTPUT_FILE" ]]; then
    exit 1
fi
CFLAGS="$CFLAGS -DOUTPUT_DAT=\\\"$OUTPUT_FILE\\\""

TRITS=$(dialog --title "Number of ternary bits" --inputbox "Enter a number:" 10 50 4 3>&1 1>&2 2>&3)
if [[ $? -ne 0 || -z "$OUTPUT_FILE" || ! "$TRITS" =~ ^[0-9]+$ ]]; then
    exit 1
fi
CFLAGS="$CFLAGS -DTRITS=$TRITS"

OPTIONS=$(dialog --title "Optional flags" --checklist "Select desired options:" 10 50 2 \
    1 "Decimal input file" off \
    2 "Fixed number of ternary bits" off 3>&1 1>&2 2>&3)
if [[ $? -ne 0 ]]; then
    exit 1
fi
if [[ "$OPTIONS" =~ "1" ]]; then
    CFLAGS="$CFLAGS -DDECIMAL_INPUT"
fi
if [[ "$OPTIONS" =~ "2" ]]; then
    CFLAGS="$CFLAGS -DFIXED_TRITS"
fi

clear
make clean
make CFLAGS="$CFLAGS"
