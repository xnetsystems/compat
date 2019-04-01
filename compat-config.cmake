if(NOT TARGET compat::compat)
  add_library(compat::compat INTERFACE IMPORTED)
  set_target_properties(compat::compat PROPERTIES
    INTERFACE_LINK_LIBRARIES "$<$<PLATFORM_ID:Windows>:ws2_32>$<$<CXX_COMPILER_ID:Clang>:c++fs>")
  set_target_properties(compat::compat PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../../include")
  if(MSVC)
    set_target_properties(compat::compat PROPERTIES
      INTERFACE_COMPILE_DEFINITIONS "_SILENCE_CXX17_ALLOCATOR_VOID_DEPRECATION_WARNING=1")
  endif()
endif()
