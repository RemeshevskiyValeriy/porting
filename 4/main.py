import os

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_file = os.path.join(script_dir, "input.txt")
    output_file = os.path.join(script_dir, "results.txt")

    try:
        with open(input_file, "r", encoding="utf-8") as file:
            numbers = [float(line.strip()) for line in file if line.strip()]

    except FileNotFoundError:
        print("Input file not found.")
        return

    if not numbers:
        print("No numbers found in input file.")
        return

    total_sum = sum(numbers)

    subtraction = numbers[0]
    for num in numbers[1:]:
        subtraction -= num

    multiplication = 1
    for num in numbers:
        multiplication *= num

    result_text = (
        "Calculation results\n"
        "-------------------\n"
        f"Numbers: {numbers}\n"
        f"Sum: {total_sum}\n"
        f"Subtraction: {subtraction}\n"
        f"Multiplication: {multiplication}\n"
    )

    print(result_text)

    with open(output_file, "w", encoding="utf-8") as file:
        file.write(result_text)

    print(f"Results saved to {output_file}")


if __name__ == "__main__":
    main()