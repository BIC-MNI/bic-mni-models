# download and install anatomical templates

SET(MNI_ICBM152_09C_URL "http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09c_minc2.zip")


DOWNLOAD_TEMPLATE(${MNI_ICBM152_09C_URL} 
 "dcaa4de940a9ec5028e63ee5b3699b48" 
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09c_minc2.zip"  )


UNPACK_AND_INSTALL_TEMPLATE(
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09c_minc2.zip" 
 icbm152_model_09c )

