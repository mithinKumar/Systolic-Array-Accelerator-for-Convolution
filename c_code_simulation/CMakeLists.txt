add_library(matrix_ops STATIC matrix_ops.c logger.c)
target_include_directories(matrix_ops PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(complete complete.c)
target_link_libraries(complete PRIVATE matrix_ops)

add_executable(preprocessing preprocessing.c)
target_link_libraries(preprocessing PRIVATE matrix_ops)

add_executable(demo demo.c)
target_link_libraries(demo PRIVATE matrix_ops)

add_executable(test_runner test_matrix_ops.c)
target_link_libraries(test_runner PRIVATE matrix_ops)

add_test(NAME systolic_array_unit_tests COMMAND test_runner)
