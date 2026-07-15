vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO geoff-m/stringpool
    REF 593f25e63703e9f938e9c3720ed65a9944f21442
    SHA512 2fccc78989d10865bec1027c7838aa69f8aa559c7b82ef5939cc03622293a91ac862c17cf4617d6c0e93fc971b2326b2d8e172c6e840658e54b15ed7a4dc2570
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
     -DSTRINGPOOL_TEST_ENABLE=OFF)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

vcpkg_cmake_config_fixup(
    PACKAGE_NAME "${PORT}"
    CONFIG_PATH "lib/cmake/${PORT}"
)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
