# download and install anatomical templates

SET(MNI_ICBM152_09A_URL "http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09a_minc2.zip")

DOWNLOAD_TEMPLATE(${MNI_ICBM152_09A_URL} 
 "e220c28e533846c4e7d9aeb520c1a42e"
 "${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09a_minc2.zip"  )


UNPACK_AND_INSTALL_TEMPLATE("${CMAKE_CURRENT_BINARY_DIR}/mni_icbm152_nlin_sym_09a_minc2.zip" 
 icbm152_model_09a)

