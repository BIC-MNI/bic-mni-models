# download and install anatomical templates

SET(MNI_ICBM152_09A_URL "http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09a_minc2.zip")

DOWNLOAD_TEMPLATE(${MNI_ICBM152_09A_URL} 
 "5687fbd02c00d0e9c915bda9991658eb" 
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09a_minc2.zip"  )


UNPACK_AND_INSTALL_TEMPLATE("${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09a_minc2.zip" 
 icbm152_model_09a)

