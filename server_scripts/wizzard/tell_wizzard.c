#include <stdlib.h>
#include <pwd.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

// TODO: Define max user input length
#define MAX_USER_INPUT_LENGHT 224
#define MAX_USERID_LENGTH 32
#define MAX_ANSWER_LENGTH MAX_USERID_LENGTH + MAX_USER_INPUT_LENGHT

int main(int argc, char* argv[]) {

    if (argc != 2) {
        printf("Invalid syntax!\n");
        printf("Usage: tell_wizzard <your answer>");
        return EXIT_FAILURE;
    }

    // Get username
    char username[MAX_USERID_LENGTH];
    cuserid(username);

    // Build answer to send
    // username:answer
    char answer_buffer[MAX_ANSWER_LENGTH];
    sprintf(answer_buffer, "%s:%s\n", username, argv[1]);

    // FIFO pipe
    int fd;
    char * ear = "/tmp/ear";

    // Open FIFO for write only
    fd = open(ear, O_WRONLY);

    // Whisper the answer into the ear of the wizzard
    write(fd, answer_buffer, MAX_ANSWER_LENGTH);
    close(fd);

    return EXIT_SUCCESS;
}
