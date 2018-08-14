cmake_minimum_required(VERSION 3.11)
project(changelog)

#####################
##   Get Version   ##
#####################
execute_process(COMMAND "./.dev/getVersion.sh"
	OUTPUT_VARIABLE VERSION_VERSION
	WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
	ERROR_QUIET
	OUTPUT_STRIP_TRAILING_WHITESPACE
	)

configure_file(
	${CMAKE_SOURCE_DIR}/include/Config.hpp.in
	${CMAKE_SOURCE_DIR}/include/Config.hpp
)

#####################
##   Executables   ##
#####################
add_executable(changelog
	main.cpp)