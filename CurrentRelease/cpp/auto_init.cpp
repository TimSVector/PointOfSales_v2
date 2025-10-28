#include <cstdio>

#include "database.h"

// Add other headers for future subsystems here, e.g.:
// #include "logger.hpp"
// #include "network.hpp"

namespace {
struct AutoInitializer {
    AutoInitializer() {
        
        // --- Core system initializers ---
        Initialize_Database();

        // Future: add other auto-init routines here
        // Initialize_Logger();
        // Initialize_Network();

#if defined(DEBUG_INIT)
        printf("[AutoInit] All systems initialized before main()\n");
#endif
    }
};

// Global instance that runs before main()
static AutoInitializer __auto_init;
}  // namespace
