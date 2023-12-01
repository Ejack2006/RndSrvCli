cmake_minimum_required(VERSION 3.0)
project(RndCli)

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)
# Instruct CMake to create code from Qt designer ui files
set(CMAKE_AUTOUIC ON)

# Find the QtWidgets library
find_package(Qt5Widgets CONFIG REQUIRED)
find_package(Qt5Network CONFIG REQUIRED)

set(rndcli_SRC
  src/main.cpp
  src/rndcli.cpp
  src/tcpclient.cpp
)

# Tell CMake to create the helloworld executable
add_executable(rndcli ${rndcli_SRC})

# Use the Widgets module from Qt 5.
target_link_libraries(rndcli Qt5::Widgets)
target_link_libraries(rndcli Qt5::Network)

# Install the executable
install(TARGETS rndcli DESTINATION bin)
