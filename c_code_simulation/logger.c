#include "logger.h"
#include <stdarg.h>
#include <time.h>

static log_level_t current_level = LOG_LEVEL_INFO;

static const char *level_strings[] = {
    "DEBUG",
    "INFO",
    "WARN",
    "ERROR"
};

void log_set_level(log_level_t level) {
    current_level = level;
}

log_level_t log_get_level(void) {
    return current_level;
}

void log_message(log_level_t level, const char *file, int line, const char *fmt, ...) {
    if (level < current_level) {
        return;
    }

    FILE *stream = (level >= LOG_LEVEL_ERROR) ? stderr : stdout;

    time_t rawtime;
    struct tm *timeinfo;
    char time_buffer[32];

    time(&rawtime);
    timeinfo = localtime(&rawtime);
    if (timeinfo) {
        strftime(time_buffer, sizeof(time_buffer), "%Y-%m-%d %H:%M:%S", timeinfo);
    } else {
        time_buffer[0] = '\0';
    }

    fprintf(stream, "[%s] [%s] (%s:%d): ", time_buffer, level_strings[level], file, line);

    va_list args;
    va_start(args, fmt);
    vfprintf(stream, fmt, args);
    va_end(args);

    fprintf(stream, "\n");
    fflush(stream);
}
