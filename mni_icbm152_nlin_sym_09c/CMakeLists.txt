# download and install anatomical templates

SET(MNI_ICBM152_09C_URL "http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09c_minc2.zip")


DOWNLOAD_TEMPLATE(${MNI_ICBM152_09C_URL} 
 "31f6fb8031a7efa7d4031b578944ceb5" 
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09c_minc2.zip"  )


UNPACK_AND_INSTALL_TEMPLATE(
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09c_minc2.zip" 
 icbm152_model_09c )

