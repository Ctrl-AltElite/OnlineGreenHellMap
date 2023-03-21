#include <curl/curl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <memory.h>

#define API_URL(endpoint) ("http://127.0.0.1:5000/"endpoint)
char *Authorization(const char *password) {
    char *o = (char*)malloc(64);
    memset(o, 0, 64);
    strcat(o, "Authorization: ");
    strcat(o, password);
    return o;
}

int Login(const char *password) {
    CURL *session;
    struct curl_slist *headers = NULL;
    long http_code;
    char *auth = Authorization(password);

    headers = curl_slist_append(headers, auth);
    

    session = curl_easy_init();
    if (!session) 
        return 2;
    curl_easy_setopt(session, CURLOPT_URL, API_URL("auth"));
    curl_easy_setopt(session, CURLOPT_POST, 1);
    curl_easy_setopt(session, CURLOPT_POSTFIELDS, "");
    curl_easy_setopt(session, CURLOPT_HTTPHEADER, headers);

    curl_easy_perform(session);
    curl_easy_getinfo (session, CURLINFO_RESPONSE_CODE, &http_code);

    curl_easy_cleanup(session);
    curl_slist_free_all(headers);
    free(auth);

    return http_code == 200;
}

int RegisterLocation(const char *password) {
    char name[256] = {0};
    int w = 0, s = 0;
    CURL *session;
    char ch;
    struct curl_slist *headers = NULL;
    long http_code;
    char data[512] = {0};
    char *auth = Authorization(password);


    while (1) {
        printf("New location:\n");
        printf("  Location name: ");
        fgets(name, 256, stdin);
        name[strlen(name)-1] = 0;
        printf("  Location W: ");
        scanf("%d", &w);
        printf("  Location S: ");
        scanf("%d", &s);
        printf("~~~~\nIs the information correct? [y/n]");
        getchar();
        ch = getchar();
        getchar();
        if (ch == 'y') {
            break;
        }
    }

    sprintf(data, "name=%s&w=%d&s=%d", name, w, s);

    headers = curl_slist_append(headers, auth);

    session = curl_easy_init();
    if (!session) 
        return 2;
    curl_easy_setopt(session, CURLOPT_URL, API_URL("reg"));
    curl_easy_setopt(session, CURLOPT_POST, 1);
    curl_easy_setopt(session, CURLOPT_POSTFIELDS, data);
    curl_easy_setopt(session, CURLOPT_HTTPHEADER, headers);

    curl_easy_perform(session);
    curl_easy_getinfo (session, CURLINFO_RESPONSE_CODE, &http_code);

    curl_easy_cleanup(session);
    curl_slist_free_all(headers);
    
    free(auth);
}

void Browse(const char *password) {
    CURL *session;
    char ch;
    struct curl_slist *headers = NULL;
    long http_code;
    char data[512] = {0};
    int i = 0;
    char *auth = Authorization(password);

    while (1) {} // todo: i increase; d decrease; q quit
}

void HelpMessage() {
    printf("Online Green Hell Map (OGHM)\n");
    printf("Commands:\n");
    printf("---------\n");
    printf("exit - exists the program\n");
    printf("h / help - prints this message\n");
    printf("reg / register - registers a new location\n");
    printf("br / browse - browses through locations\n");
}

int main() {
    char password[64] = {0};
    char command[16] = {0};

    while (1) {
        memset(password, 0, 64);
        printf("Enter password: ");
        fgets(password, 64, stdin);
        password[strlen(password)-1] = 0;
        if (Login(password) == 1)
            break;    
        
        printf("Password is invalid! Try again!!!\n");
    }


    while (1) {
        command[0] = 0;
        printf("~> ");
        fgets(command, 16, stdin);
        command[strlen(command)-1] = 0;

        if (strcmp(command, "exit") == 0) {
            break;

        } else if (strcmp(command, "h") == 0 || strcmp(command, "help") == 0) {
            HelpMessage();

        } else if (strcmp(command, "reg") == 0 || strcmp(command, "register") == 0) {
            RegisterLocation(password);

        } else if (strcmp(command, "br") == 0 || strcmp(command, "browse") == 0) {
        }
        // todo: add search by name
    }

    curl_global_cleanup();
    return 0;
}