#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "FasTCBase" for configuration "Release"
set_property(TARGET FasTCBase APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(FasTCBase PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/FasTCBase.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS FasTCBase )
list(APPEND _IMPORT_CHECK_FILES_FOR_FasTCBase "${_IMPORT_PREFIX}/lib/FasTCBase.lib" )

# Import target "FasTCCore" for configuration "Release"
set_property(TARGET FasTCCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(FasTCCore PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/FasTCCore.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS FasTCCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_FasTCCore "${_IMPORT_PREFIX}/lib/FasTCCore.lib" )

# Import target "FasTCIO" for configuration "Release"
set_property(TARGET FasTCIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(FasTCIO PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/FasTCIO.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS FasTCIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_FasTCIO "${_IMPORT_PREFIX}/lib/FasTCIO.lib" )

# Import target "BPTCEncoder" for configuration "Release"
set_property(TARGET BPTCEncoder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(BPTCEncoder PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/BPTCEncoder.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS BPTCEncoder )
list(APPEND _IMPORT_CHECK_FILES_FOR_BPTCEncoder "${_IMPORT_PREFIX}/lib/BPTCEncoder.lib" )

# Import target "PVRTCEncoder" for configuration "Release"
set_property(TARGET PVRTCEncoder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(PVRTCEncoder PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/PVRTCEncoder.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS PVRTCEncoder )
list(APPEND _IMPORT_CHECK_FILES_FOR_PVRTCEncoder "${_IMPORT_PREFIX}/lib/PVRTCEncoder.lib" )

# Import target "DXTEncoder" for configuration "Release"
set_property(TARGET DXTEncoder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DXTEncoder PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/DXTEncoder.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS DXTEncoder )
list(APPEND _IMPORT_CHECK_FILES_FOR_DXTEncoder "${_IMPORT_PREFIX}/lib/DXTEncoder.lib" )

# Import target "ETCEncoder" for configuration "Release"
set_property(TARGET ETCEncoder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ETCEncoder PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ETCEncoder.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS ETCEncoder )
list(APPEND _IMPORT_CHECK_FILES_FOR_ETCEncoder "${_IMPORT_PREFIX}/lib/ETCEncoder.lib" )

# Import target "ASTCEncoder" for configuration "Release"
set_property(TARGET ASTCEncoder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ASTCEncoder PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ASTCEncoder.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS ASTCEncoder )
list(APPEND _IMPORT_CHECK_FILES_FOR_ASTCEncoder "${_IMPORT_PREFIX}/lib/ASTCEncoder.lib" )

# Import target "tc" for configuration "Release"
set_property(TARGET tc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(tc PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/tc.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS tc )
list(APPEND _IMPORT_CHECK_FILES_FOR_tc "${_IMPORT_PREFIX}/bin/tc.exe" )

# Import target "compare" for configuration "Release"
set_property(TARGET compare APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(compare PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/compare.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS compare )
list(APPEND _IMPORT_CHECK_FILES_FOR_compare "${_IMPORT_PREFIX}/bin/compare.exe" )

# Import target "decomp" for configuration "Release"
set_property(TARGET decomp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(decomp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/decomp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS decomp )
list(APPEND _IMPORT_CHECK_FILES_FOR_decomp "${_IMPORT_PREFIX}/bin/decomp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
