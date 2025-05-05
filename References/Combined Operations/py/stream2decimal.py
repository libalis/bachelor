#!/usr/bin/env python3
TRITS = 8
BITS_PER_TRIT = 2
BITS_PER_NUMBER = TRITS * BITS_PER_TRIT
def convert_stream_to_decimal(bit_stream):
    if len(bit_stream) % BITS_PER_NUMBER != 0:
        raise ValueError(f"Input length must be a multiple of {BITS_PER_NUMBER} bits (for {TRITS} trits).")
    decimal_values = []
    for start_index in range(0, len(bit_stream), BITS_PER_NUMBER):
        chunk = bit_stream[start_index : start_index + BITS_PER_NUMBER]
        value = 0
        for trit_index in range(TRITS):
            bit_pair = chunk[trit_index * BITS_PER_TRIT : (trit_index + 1) * BITS_PER_TRIT]
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
        user_input = input(f"Enter a bit stream ({BITS_PER_NUMBER} bits per number, any multiple): ").strip()
        results = convert_stream_to_decimal(user_input)
        print("Decimal values:", results)
    except ValueError as error:
        print("Error:", error)
        exit(1)
    except KeyboardInterrupt:
        print("\nConversion cancelled by user.")
        exit(0)
