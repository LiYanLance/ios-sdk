#include "stdint.h"

struct ExternError {
    int32_t code;
    char *message; // note: nullable
};


const char* parse_sol_signature(struct ExternError*, const char* signature);