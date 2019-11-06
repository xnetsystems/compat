include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO chriskohlhoff/networking-ts-impl
    REF c97570e7ceef436581be3c138868a19ad96e025b
    SHA512 438df853388bb7960ac914138d7ae2e61be015b30a5cb48c0681d3edc457b7a3880810615d0a95887fb702527bbcd2d035779b3f560dc4e943081c34a709cc3e
    HEAD_REF master
)

file(INSTALL ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)

file(INSTALL ${SOURCE_PATH}/include/experimental/__net_ts
  DESTINATION ${CURRENT_PACKAGES_DIR}/include/experimental
  FILES_MATCHING PATTERN "*.hpp" PATTERN "*.ipp")

file(INSTALL ${CURRENT_PORT_DIR}/include DESTINATION ${CURRENT_PACKAGES_DIR})
file(INSTALL ${CURRENT_PORT_DIR}/compat-config.cmake DESTINATION ${CURRENT_PACKAGES_DIR}/share/compat)
