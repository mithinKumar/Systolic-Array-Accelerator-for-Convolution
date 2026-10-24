#ifndef LOGGER_H
#define LOGGER_H

#include <stdio.h>

/**
 * Log levels for systolic array simulation.
 */
typedef enum {
    LOG_LEVEL_DEBUG = 0,
    LOG_LEVEL_INFO  = 1,
    LOG_LEVEL_WARN  = 2,
    LOG_LEVEL_ERROR = 3
} log_level_t;

/**
 * Set the minimum log level to display.
 */
void log_set_level(log_level_t level);

/**
 * Get the current log level.
 */
log_level_t log_get_level(void);

/**
 * Write a formatted message to the logger stream.
 */
void log_message(log_level_t level, const char *file, int line, const char *fmt, ...);

#define LOG_DEBUG(...) log_message(LOG_LEVEL_DEBUG, __FILE__, __LINE__, __VA_ARGS__)
#define LOG_INFO(...)  log_message(LOG_LEVEL_INFO,  __FILE__, __LINE__, __VA_ARGS__)
#define LOG_WARN(...)  log_message(LOG_LEVEL_WARN,  __FILE__, __LINE__, __VA_ARGS__)
#define LOG_ERROR(...) log_message(LOG_LEVEL_ERROR, __FILE__, __LINE__, __VA_ARGS__)

#endif /* LOGGER_H */
