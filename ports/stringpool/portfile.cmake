vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO geoff-m/stringpool
    REF v1.0.0
    SHA512 0
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
     -DSTRINGPOOL_TEST_ENABLE=OFF)

vcpkg_cmake_install()

vcpkg_install_copyright("${SOURCE_PATH}/LICENSE")
