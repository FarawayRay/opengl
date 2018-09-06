# Install script for directory: G:/GitHub/FasTC/src/Base

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "lib")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "G:/GitHub/FasTC/build/Base/Debug/FasTCBase.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "G:/GitHub/FasTC/build/Base/Release/FasTCBase.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "G:/GitHub/FasTC/build/Base/MinSizeRel/FasTCBase.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "G:/GitHub/FasTC/build/Base/RelWithDebInfo/FasTCBase.lib")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/FasTC" TYPE FILE FILES
    "G:/GitHub/FasTC/src/Base/include/FasTC/Image.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/ImageFwd.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Pixel.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/TexCompTypes.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/CompressionFormat.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/CompressionJob.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/IPixel.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Color.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Bits.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/BitStream.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/MatrixBase.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/MatrixSquare.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Matrix3x3.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Matrix4x4.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/ScopedAllocator.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/VectorBase.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Vector2.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Vector3.h"
    "G:/GitHub/FasTC/src/Base/include/FasTC/Vector4.h"
    "G:/GitHub/FasTC/build/Base/include/FasTC/BaseConfig.h"
    )
endif()

