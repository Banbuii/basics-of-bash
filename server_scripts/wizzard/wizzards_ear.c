#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdlib.h>

#define MAX_USER_INPUT_LENGHT 224
#define MAX_USERID_LENGTH 32
#define MAX_ANSWER_LENGTH MAX_USERID_LENGTH + MAX_USER_INPUT_LENGHT

#define CORRECT_ANSWER "correct"

bool is_correct_answer(char* answer) {
    if (strcmp(answer, CORRECT_ANSWER) == 0) {
        return true;
    }
    return false;
}
 
int main()
{
    // TODO: Clear log file

    // FIFO
    int fd;
    char * ear = "/tmp/ear";
 
    // Creating the named file(FIFO)
    // mkfifo(<pathname>, <permission>)
    mkfifo(ear, 0666);
 
    while (1)
    {
        // Buffer for answers
        char buffer[MAX_ANSWER_LENGTH];
        
        // Open FIFO for Read only
        fd = open(ear, O_RDONLY);
 
        // Read from FIFO
        read(fd, buffer, MAX_ANSWER_LENGTH);
        
        // Answers come in the form:
        // username:answer

        char username[MAX_USERID_LENGTH];
        char answer[MAX_USER_INPUT_LENGHT];

        int answer_start = 0;

        for (int i = 0; i < MAX_ANSWER_LENGTH; i++) {
            if (buffer[i] == ':') {
                buffer[i] = '\0';
                sprintf(username, "%s", buffer);
                i++;
                answer_start = i;
            } else if (buffer[i] == '\n') {
                buffer[i] = '\0';
                sprintf(answer, "%s", (buffer + answer_start));
                break;
            }
        }

        // TODO: Define logging syntax
        // Check given answer and log formatted string
        if (is_correct_answer(answer)) {
            // Set group for user
            char add_command[300];
            sprintf(add_command, "usermod -a -G wizzards_approval %s", username);
            system(add_command);

            // Force user log out - needed to reload groups
            // FIXME: Better way?
            char logout_command[300];
            sprintf(logout_command, "pkill -SIGKILL -u %s", username);
            system(logout_command);

            printf("[ CORRECT ] ");
        } else {
            printf("[INCORRECT] ");
        }
        printf("%s gave answer '%s'\n", username, answer);
        
        fflush(stdout);
        close(fd);
    }

    return EXIT_SUCCESS;
}
