import os


def analyze_text_file(filename):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    file_path = os.path.join(script_dir, filename)

    try:
        with open(file_path, "r", encoding="utf-8") as file:
            text = file.read()
    except FileNotFoundError:
        print(f"Error: file '{filename}' not found.")
        return

    lines = text.splitlines()
    words = text.split()
    characters = len(text)

    longest_word = max(words, key=len) if words else "-"

    print("Text file analysis")
    print("------------------")
    print(f"File name: {filename}")
    print(f"Lines: {len(lines)}")
    print(f"Words: {len(words)}")
    print(f"Characters: {characters}")
    print(f"Longest word: {longest_word}")


def main():
    analyze_text_file("input.txt")


if __name__ == "__main__":
    main()
