INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_PERSEUSAGAIN perseusagain)

FIND_PATH(
    PERSEUSAGAIN_INCLUDE_DIRS
    NAMES perseusagain/api.h
    HINTS $ENV{PERSEUSAGAIN_DIR}/include
        ${PC_PERSEUSAGAIN_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREEFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    PERSEUSAGAIN_LIBRARIES
    NAMES gnuradio-perseusagain
    HINTS $ENV{PERSEUSAGAIN_DIR}/lib
        ${PC_PERSEUSAGAIN_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PERSEUSAGAIN DEFAULT_MSG PERSEUSAGAIN_LIBRARIES PERSEUSAGAIN_INCLUDE_DIRS)
MARK_AS_ADVANCED(PERSEUSAGAIN_LIBRARIES PERSEUSAGAIN_INCLUDE_DIRS)

