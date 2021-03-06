find_path(
    PERSEUS_INCLUDE_DIRS
    NAMES perseus-in.h
    HINTS /usr/local/include
    PATHS /home/sourbh/libperseus-sdr
    )
find_library(
    PERSEUS_LIBRARIES
    NAMES perseus-sdr
    HINTS /usr/local/lib
    PATHS /usr/local/lib
    )
INCLUDE(FindPackageHandleStandardArgs)
find_package_handle_standard_args("ff" PERSEUS_INCLUDE_DIRS PERSEUS_LIBRARIES)
mark_as_advanced(PERSEUS_INCLUDE_DIRS PERSEUS_LIBRARIES)
