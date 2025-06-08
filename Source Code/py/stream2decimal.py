#!/usr/bin/env python3
TRITS = 8

def convert_streams_to_decimals(first_bit_stream, second_bit_stream):
    if len(first_bit_stream) != len(second_bit_stream):
        raise ValueError("Both bit streams must have the same length.")
    if len(first_bit_stream) % TRITS != 0:
        raise ValueError(f"Each bit stream length must be a multiple of {TRITS} bits.")
    decimal_values = []
    for start_index in range(0, len(first_bit_stream), TRITS):
        value = 0
        for trit_index in range(TRITS):
            bit_pair = first_bit_stream[start_index + trit_index] + second_bit_stream[start_index + trit_index]
            if bit_pair == "00":
                trit_value = -1
            elif bit_pair == "11":
                trit_value = 1
            else:
                trit_value = 0
            shift = TRITS - trit_index - 1
            value += trit_value << shift
        decimal_values.append(value)
    return decimal_values

if __name__ == "__main__":
    try:
        first_user_input = input(f"Enter 1st bit stream ({TRITS} bits per number, any multiple): ").strip()
        second_user_input = input(f"Enter 2nd bit stream ({TRITS} bits per number, any multiple): ").strip()
        results = convert_streams_to_decimals(first_user_input, second_user_input)
        print("Decimal values:", results)
    except ValueError as error:
        print("Error:", error)
        exit(1)
    except KeyboardInterrupt:
        print("\nConversion cancelled by user.")
        exit(0)
