# Copyright 2016 The University of North Carolina at Chapel Hill
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Please send all BUG REPORTS to <pavel@cs.unc.edu>.
# <http://gamma.cs.unc.edu/FasTC/>

SET(FASTC_VERSION 0.0.1)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was FasTCConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

SET(FasTC_LIBRARIES FasTCBase FasTCIO FasTCCore BPTCEncoder PVRTCEncoder DXTEncoder ETCEncoder ASTCEncoder)

IF(NOT TARGET FasTCBase)
  # We're coming from a build tree -- include all of the targets
  # from the project and try to make sure that our includes are set properly
  INCLUDE("${CMAKE_CURRENT_LIST_DIR}/FasTCTargets.cmake")

  FOREACH(LIB ${FasTC_LIBRARIES})
    STRING(REPLACE "FasTC" "" DIR "${LIB}")

    SET(CURRENT_DIR "G:/GitHub/FasTC/src/${DIR}/include")
    IF( EXISTS "${CURRENT_DIR}/" )
      SET(FasTC_INCLUDE_DIRS ${FasTC_INCLUDE_DIRS} ${CURRENT_DIR})
    ENDIF()

    SET(CURRENT_DIR "G:/GitHub/FasTC/build/${DIR}/include")
    IF( EXISTS "${CURRENT_DIR}/" )
      SET(FasTC_INCLUDE_DIRS ${FasTC_INCLUDE_DIRS} ${CURRENT_DIR})
    ENDIF()

  ENDFOREACH()

  SET(FasTC_EXECUTABLES tc compare decomp)

ELSE()

  # This is an install tree -- everything should be a lot easier....
  SET_AND_CHECK(FasTC_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include/FasTC")
  SET_AND_CHECK(FasTC_BIN_DIR "${PACKAGE_PREFIX_DIR}/bin")
  SET_AND_CHECK(FasTC_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

ENDIF()
