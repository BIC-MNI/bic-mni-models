function(DOWNLOAD_TEMPLATE url md5 dst )
  file(DOWNLOAD "${url}" "${dst}"  EXPECTED_MD5  "${md5}" SHOW_PROGRESS )
ENDFUNCTION(DOWNLOAD_TEMPLATE)

function(UNPACK_AND_INSTALL_TEMPLATE archive name)

  add_custom_target( 
    unpack_${name} ALL
    unzip -u -o ${archive} -d ${CMAKE_CURRENT_BINARY_DIR}/${name}
    DEPENDS ${archive}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Unpacking ${name}" VERBATIM
  )

  INSTALL(DIRECTORY 
      ${CMAKE_CURRENT_BINARY_DIR}/${name}
  DESTINATION 
      share/)

ENDFUNCTION(UNPACK_AND_INSTALL_TEMPLATE)
