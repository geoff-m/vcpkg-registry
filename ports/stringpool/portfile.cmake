vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO geoff-m/stringpool
    REF 919c2914252128fc6951aeed6ef5b2748b961380
    SHA512 29583c71ce8d5d4846c87f6c815ec4c315ae30e479a99eee2f95da2707ffd99560173604d8f2772d8f45c775ad35ec50a2c5b2fd38392246e906d884efa4a8f9
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
