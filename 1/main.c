#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

#define BUFFER_SIZE 256

int main(void) {
    const char *filename = "input.txt";
    int file_descriptor;
    char buffer[BUFFER_SIZE];
    ssize_t bytes_read;

    /*
        Windows version would use:
        CreateFile(...) to open a file
        ReadFile(...) to read from a file

        Linux equivalents:
        open(...) instead of CreateFile(...)
        read(...) instead of ReadFile(...)
    */

    file_descriptor = open(filename, O_RDONLY);

    if (file_descriptor == -1) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    bytes_read = read(file_descriptor, buffer, BUFFER_SIZE - 1);

    if (bytes_read == -1) {
        perror("Error reading file");
        close(file_descriptor);
        return EXIT_FAILURE;
    }

    buffer[bytes_read] = '\0';

    printf("File content:\n%s\n", buffer);

    close(file_descriptor);

    return EXIT_SUCCESS;
}