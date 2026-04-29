vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO geoff-m/stringpool
    REF v1.0.0
    SHA512 b63976edd27169fdef59ebb581a3ba8901d241cabb461ba0c82fbef3d9c34adfca7cc6bc2430d53e4014ee3d50180069e209d5d516889be22730ea37c34dd880
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
     -DSTRINGPOOL_TEST_ENABLE=OFF)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
