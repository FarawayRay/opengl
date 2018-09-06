# Install script for directory: G:/GitHub/FasTC/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/FasTC")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES
    "G:/GitHub/FasTC/build/FasTCConfigVersion.cmake"
    "G:/GitHub/FasTC/build/FasTCConfig.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC/FasTCTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC/FasTCTargets.cmake"
         "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC/FasTCTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC/FasTCTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/FasTC" TYPE FILE FILES "G:/GitHub/FasTC/build/CMakeFiles/Export/lib/cmake/FasTC/FasTCTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("G:/GitHub/FasTC/build/Base/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/Core/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/IO/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/BPTCEncoder/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/PVRTCEncoder/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/DXTEncoder/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/ETCEncoder/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/ASTCEncoder/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/CLTool/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/GTest/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/Base/test/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/PVRTCEncoder/test/cmake_install.cmake")
  include("G:/GitHub/FasTC/build/ASTCEncoder/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "G:/GitHub/FasTC/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
