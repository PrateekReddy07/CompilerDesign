#include <stdio.h>
#include <string.h>

int main() {
    char line[20];
    int s[20], t = 1, m = 0, i = 0, prevMem = 0;

    printf("Enter string:");
    fgets(line, sizeof(line), stdin);

    for (i = 0; i < 20; i++) {
        s[i] = 0;
    }

    printf("mem\top\ta1\ta2\n");

    for (i = 2; line[i] != '\0'; i++) {
        if ((line[i] == '+' || line[i] == '-' || line[i] == '*' || line[i] == '/') && s[i] == 0) {
            if (s[i + 1] == 0) {
                printf("\n(%d)\t:=\t%c\t\t\n", m, line[i + 1]);
                m++;
                s[i + 1] = t++;
            }
            printf("(%d)\t%c\t", m, line[i]);
            m++;

            if (s[i - 1] == 0) {
                printf("%c\t", line[i - 1]);
            } else {
                printf("(%d)\t", s[i - 1]-1 );
            }
            printf("(%d)\t", prevMem);
            s[i - 1] = s[i + 1] = t++;
            s[i] = 1;
            prevMem = m;
        }
    }

    return 0;
}

output
Enter string:a=b*c/d*e
mem     op      a1      a2

(0)     :=      c
(1)     *       b       (0)
(2)     :=      d
(3)     /       (1)     (2)
(4)     :=      e
(5)     *       (3)     (4)
