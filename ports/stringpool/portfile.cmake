vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO geoff-m/stringpool
    REF 3da9aba0fedf7c1ab6fdc776c42d289611b11f80
    SHA512 9e9633c375f2bcd2b076cdb5b7271a20bbc8ba084ab2a344bedb29cc409b3726c80da7e6adbdd9679a0fc0373c416d8fdb86f8fd6191e7948d0ce461a429684f
    HEAD_REF feature/package
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
     -DSTRINGPOOL_TEST_ENABLE=OFF)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
